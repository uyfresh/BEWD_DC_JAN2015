# AnimationHub

## 1) Build a Rails app

This should be old hat by now, so lets blow through setting up a simple app that searches for animations using the Giphy API:

```
rails new animation_hub -d postgresql
cd animation_hub
rake db:create
```

In `Gemfile`:

```
gem 'httparty'
```

Then of course, `bundle install`, and then go on to setting up routes, controllers, and views.

**Routes:**

```
root 'home#index'
resources :animations, only: [:index]
```

**Home section:**

In `app/controllers/home_controller.rb`:

```
class HomeController < ApplicationController
  def index
  end
end
```

In `app/views/home/index.html.erb`:

```
 <h1>Animation Hub</h1>
 <p>Your destination for awesome animations!</p>
```

**Animations section:**

In `app/controllers/animations_controller.rb`:

```
class AnimationsController < ApplicationController

  def index
    if params[:query]
      query = params[:query].gsub(' ', '+')
      response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{query}&limit=3&api_key=dc6zaTOxFJmzC")
      results = JSON.parse(response.body)
      @results = results['data']
    else
      @results = []
    end
  end
  
end
```

In `app/views/animations/index.html.erb`:

```
 <h1>Find Animations</h1>

 <form action="<%= animations_path %>" method="get">
  <label>Search: <input name="query"></label>
  <button>Submit</button>
 </form>

 <% @results.each do |result| %>
  <div><%= image_tag result['images']['fixed_width']['url'] %></div>
 <% end %>
```

Start your server using `rails s`, and then indulge in the glory of this fabulous app by visiting the two application pages:

```
http://localhost:3000
http://localhost:3000/animations
```

Woot.

## 2) Adding Users

Providing user account management is a surprisingly involved prospect when you start breaking down the parts of it: users need to be able to sign up, log in, log out, change their passwords, etc. Also – storing sensitive user data (such as passwords) mandates that strict security protocols are followed.

Thankfully, there are several authentication frameworks available that do all this heavy-lifting for us. We'll be using the [Devise](https://github.com/plataformatec/devise) gem.

```
gem 'devise'
```

Add Devise to your Gemfile, and then `bundle install`. Adding the Devise gem will give Rails a fancy new generator to work with.

**Installing Devise**

Run the Devise `install` generator to apply Devise configuration to your app. This will add some baseline configuration to your app:

```
rails generate devise:install
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
```

Running this installer will print out a list of specific items to configure within your app. READ THIS LIST, and follow its very explicit setup instructions. *At the time of writing, we're only concerned with #'s 1-3.*

**Create a user model**

Next, we'll generate a "User" model for managing user accounts. You'll see that the Devise model generator does *all sorts* of things for us:

```
rails generate devise User
      invoke  active_record
      create    db/migrate/20150314122240_devise_create_users.rb
      create    app/models/user.rb
      invoke    test_unit
      create      test/models/user_test.rb
      create      test/fixtures/users.yml
      insert    app/models/user.rb
       route  devise_for :users
```

So what did that do? Let's have a look:

- **Review your migrations folder.** You have a new migration ready to go for your "users" table.

- **Review your models folder.** You have a new User model established.

- **Review your routes file.** You have a new `devise_for :users` resource added. This is Devise's own special flavor of resource meta-programming. We should probably find out what that line is doing...

- **Run `rake routes` to see Devise routes.** You'll see that the Devise resource has created a boatload of new routes for us:

```
rake routes
                  Prefix Verb   URI Pattern                    Controller#Action
                    root GET    /                              home#index
              animations GET    /animations                    animations#index
        new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
            user_session POST   /users/sign_in(.:format)       devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
           user_password POST   /users/password(.:format)      devise/passwords#create
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
                         PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
       user_registration POST   /users(.:format)               devise/registrations#create
   new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
  edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
                         PATCH  /users(.:format)               devise/registrations#update
                         PUT    /users(.:format)               devise/registrations#update
                         DELETE /users(.:format)               devise/registrations#destroy
```

Looks like we're all set. Now we just need to run a `rake db:migrate`. At this point, we have a working user account system – however...

PLEASE DO NOT SIGN UP YET!!!!!

## 3) Authentication

Authentication is the process of identifying a verified user. Basically, an "authenticated user" is someone who is currently logged into our application.

**PLEASE, DO NOT SIGN UP UNTIL INSTRUCTED TO.**

Again, please do not skip ahead here... we're going to be changing our application behaviors based on user authentication status. If your authentication status does not match this lesson, then you'll be seeing different screens than what is described herein.

**Adding `user_signed_in?` helper**

The Devise system gives us several handy view helper methods that we can use to customize our views based on the signed-in status of a user. Let's first use the `user_signed_in?` helper, which tells us if there is currently an authenticated user:

Add into `app/views/home/index.html.erb`:

```
<% if !user_signed_in? %>
  <p>New to AnimationHub? <%= link_to 'Sign Up!', new_user_registration_path %></p>
  <p>Already a member? <%= link_to 'Sign in', new_user_session_path %></p>
<% end %>
```

What's going on here? We're checking to see if there's a signed-in user. If we have no authenticated user, then we're providing links to the Sign Up / Sign in forms. The path helpers that we're using were reported by `rake routes`.

If you visit the homepage, you should see those links because we do not have an authenticated user (unless you cheated and signed up early). If you click those links, you may be surprised to find that they link to form views, which are *magically* provided to us by Devise.

**Adding `authenticate_user!` action**

Okay, so... the `/animations` page is the secret sauce of our app, right? We don't want to let any old user take advantage our sweet GIF finder; we only want that service available to authenticated users.

Devise gives us an easy way to limit content access at the *controller level*. That means we can protect our entire `AnimationsController` so that every controller action requires login before allowing access. We just need to include an `authenticate_user!` before-action:

In `app/controllers/animations_controller.rb`:

```
class AnimationsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    ...
  end
end
```

Now try visiting the `/animations` page... Aagh! As a non-authenticated user, we are automatically redirected to the login page (neat!).

## 4) The User

**OKAY, YOU CAN SIGN UP NOW.**

After you've signed up, let's go into `rails c` to inspect what your user looks like...

```
User.first
  User Load (0.7ms)  SELECT  "users".* FROM "users"   ORDER BY "users"."id" ASC LIMIT 1
 => #<User id: 1, email: "fluffykitty@catz.com", encrypted_password: "$2a$10$jYIt9GcDFlvPtT2N1sVRb.Y/WHUHt.iWEOVKJ09PRcw...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-03-14 13:42:50", last_sign_in_at: "2015-03-14 13:32:07", current_sign_in_ip: #<IPAddr: IPv4:127.0.0.1/255.255.255.255>, last_sign_in_ip: #<IPAddr: IPv4:127.0.0.1/255.255.255.255>, created_at: "2015-03-14 13:32:07", updated_at: "2015-03-14 13:42:50">
```

Notice the `encrypted_password` field set as a large and ugly hash? I'm sure glad we didn't have to figure out how to secure that data. Devise is handling a lot of advanced software design considerations for us.

After we've signed up, Devise should should have automatically signed in our newly-created user. Let's see... try going to the `/animations` page again. It should now allow it.

**Adding `current_user` helper**

Devise also gives us a `current_user` helper that will, at any time, reference the authenticated user's record. Let's try adding a header to our animations page that identifies the current user:

Add to the top of `app/views/animations/index.html.erb`:

```
 <p>Hello <%= current_user.email %>.
 <%= link_to 'Sign Out', destroy_user_session_path, :method => :delete %></p>
```

Here, we're referencing the current user, and printing out their email address as part of a formal greeting. We're also using a faux Rails destroy link to allow them to send their login session (we could also setup a form for that).

## 5) Views

Okay, so let me be frank... Devise? Your views look like butt. I want to include cat images on my signin form, and your mysterious and magical view rendering ways don't allow me to do that. If only I could customize my views!

Be careful what you wish for... The Devise generator genie will grant your wish with this one simple command:

```
rails generate devise:views
```

Loe and behold, you now have a `app/views/devise` directory... Hey, you asked for it. Happy styling!

**Pro tip:** when you generate views, Devise gives you one of everything. However, you're welcome to delete any of those views that you don't plan on customizing. If you only want to customize one specific view, just delete everything else and let Devise fill in the missing views with its default templates.

## 6) Favorites (class/homework)

A user should be able to save favorite animations, obviously. :)

- Create a Favorite model with two fields: `image_url` and `user_id`.
- Allow the user to click an "Add to favorites" button for each search result.
- Visiting `/favorites` should display a list of the signed-in user's favorite images.