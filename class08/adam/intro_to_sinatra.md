# Intro to Sinatra

**Objectives:**

- What is a Route?
- What is a View?
- How do ERB templates work?


## Getting Started with Sinatra

Sinatra is an *incredibly* simple web application framework, and is our warmup act for Rails. To get started...

### 1. Install the following Gems:

```
gem install sinatra
gem install sinatra-contrib
```

### 2. Create a Sinatra server file:

Create a new file called `server.rb` with the following contents:

```
require 'sinatra'
require 'sinatra/reloader'

get "/" do
  "Hello World!"
end
```

### 3. Run your Sinatra server:

Now run `ruby server.rb`.

You should see something like this print into your terminal:

```
== Sinatra/1.4.5 has taken the stage on 4567 for development with backup from WEBrick
[2015-02-15 08:15:07] INFO  WEBrick::HTTPServer#start: pid=33116 port=4567
```

Sinatra has taken the stage. The app server is running on our command line, and will continue running until we tell it to quit. To quit Sinatra, press `CTRL + C`.

### 4. Visit your Web app!

As long as Sinatra is running, you can access the app in a browser on your own computer at `http://localhost:4567`.

## Parameters

Parameters are data values passed through the URL route. To accept a route parameter, simply include a `:param_name` component within your route. The passed data value will be available through the provided `params` hash:

```
get '/greet/:name' do
  "Hello, #{params[:name]}!"
end
```

A route may also specify multiple params:

```
get "/greet/:name/:fav_food" do
  "Hey #{params[:name]}, let's eat some #{params[:fav_food]}"
end
```

## Using Views

Sinatra renders views (presentation markup) using Embedded Ruby (ERB) template files stored in a directory called `views`. Simply tell a route which template to render:

**views/index.erb**:

```
 <h1>Hello World!</h1>
```

**server.rb**:

```
require 'sinatra'

get "/" do
  erb :index
end
```

## ERB

Embedded Ruby may be used to dynamically print markup into a view. Ruby program is literally *embedded* within HTML markup files.

To send data into an ERB view, set the data as an instance variable within the route handler:

```
get "/" do
  @message = "Hello World"
  erb :index
end
```

To print a field into the HTML document, use printing clown hats (`<%= ... %>`):

```
This is my view, with a special message: <%= @message %>
```

To run embedded Ruby code without printing output, use basic clown hats (`<% ... %>`):

```
Let's cheer five times!

<% 5.times do %>
  Hurray!
<% end %>
```