# Intro to Sinatra

**Objectives:**

- How do computers communicate?
- What are Ports?
- What is a Route?
- What is a View?


## Getting Started with Sinatra

Sinatra is an *incredibly* simple web application framework, and is our warmup act for Rails. To get started...

### 1. Install the following Gems:

```
gem install sinatra
gem install sinatra-contrib
```

### 2. Configure a Sinatra server file:

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


## More Sinatra Tasks

#### Accept a parameter

```
require 'sinatra'

get '/greet/:name' do
  "Hello, #{params[:name]}!"
end
```

#### Just normal Ruby code

```
get "/greet/:name/:fav_food" do
  if params[:name] == "mary"
    "Hey #{params[:name]}, heard it's your birthday. Want some #{params[:fav_food]}?"
  else
    "What up, #{params[:name]}, let's eat some #{params[:sport]}"
  end
end
```
