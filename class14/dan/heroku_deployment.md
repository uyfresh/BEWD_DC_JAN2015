# Heroku Deployment

Once your app is built, deploying is surprisingly easy. Also, the official Heroku docs on deployment are quite good:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)
- [Deploying Rack-based apps](https://devcenter.heroku.com/articles/rack)


## 1. Setup Your Project Repo

First and foremost, your Rails application will require its own repository. You should NOT build an app that you plan on deploying inside of our class repository. Start a brand new repo for each new project, and simply submit a text file with your app's GitHub URL and deployed URL into our class respository.

To create a new app, go to your root `~/dev` folder and create a new Rails project, and then initialize it as a Git repository:

```
 # Create a new Rails app:
rails new my_cool_app -d postgresql
cd my_cool_app

 # Initialize as a repo, and then commit:
git init
git add .
git commit -m 'Initial commit.'
```

This new app repository only exists on your local machine. To push it to GitHub, you'll need to create a new empty GitHub repo, and then add that as the remote origin of your local repository:

```
git remote add origin git@github.com:username/reponame.git
git push origin master
```

## 2. Configure Your Assets

The Rails Asset Pipeline performs a significant amount of static asset reconfiguration during deployment, which makes assets a little finicky. Follow these rules:

* **All images** should reside in the `app/assets/images` folder.

* **All stylesheets** should reside in the `app/assets/stylesheets` folder, and should use a ".scss" extension.

**To include an image asset in an ERB VIEW**, use the image tag helper. Image file paths are relative to the `/app/assets/images/` directory:

```
<%= image_tag 'stars.jpg' %>
```

**To include an image asset in a SCSS STYLESHEET**, user the `image-url` helper. Image file paths are relative to the `/app/assets/images/` directory:

```
body {
  background: #000 image-url('stars.jpg') no-repeat;
}
```

**Lastly, include the Rails 12-Factor gem** within your Gemfile. This gem is provided by Heroku, and manages the deployment of your project's static assets:

```
gem 'rails_12factor', group: :production
```

Remember to install your bundle after updating your Gemfile!

```
bundle install
```

## 3. Setup Heroku

Within your app's root repository folder, use the Heroku toolbelt command to attach a Heroku remote (if you don't have a Heroku command, then you'll need to install it... preferably using Homebrew).

```
heroku create
 # Creating burning-rain-9904... done, stack is cedar-14
 # https://burning-rain-9904.herokuapp.com/ | git@heroku.com:fathomless-spire-9904.git
```

The followup message informs us of our newly created app URL, in this case: `https://fathomless-spire-9904.herokuapp.com`. This will be the URL where our newly-deployed app will live.

What did this do? Well, check your list remote Git hosts. We should now have a second remote host for our repository called "heroku":

```
git remote
 # origin
 # heroku
```

## 4. [DEPLOY!](http://i.imgur.com/KQv0N.gif)

Within your app's project folder, do another commit just to make sure you've captured the present state of your app. You should always remember to do this before deploying!

```
git add .
git commit -m 'New deployment configuration.'
```

Okay, now just push your repo to the Heroku remote:

```
git push heroku master
```

That's it. Wait for a few minutes, and watch the console output for errors or failure messages. If all goes well, your app should now live out in the wild. Repeat this step whenever you have changes ready to push to your live application.

## 5. Post-Deploy Steps

Heroku will automatically create a Postgres database for you upon your initial app deployment, so you'll never need to run `rake db:create`. However, all other database actions need to be run manually... generally meaning database migrations and/or seeding:

```
heroku run rake db:migrate
heroku run rake db:seed
```

Lastly, what is up with `burning-rain-9904` as my app name? This is the appropriately poetic Heroku default, which we can change. To do so, run the `heroku apps:rename` command... and yes, it may take a few tries to find an available name.

```
heroku apps:rename stargazer
 # Renaming burning-rain-9904 to stargazer... failed
 # !    Name is already taken
```