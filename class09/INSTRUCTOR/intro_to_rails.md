# Intro to Rails

## Learning Objectives

* Explain what Ruby on Rails is and why it is so popular
* Explain what convention over configuration means and how it relates to Ruby on Rails
* Describe the lifecycle of an HTTP request in Ruby on Rails
* Follow Rails naming conventions when creating views and controllers
* Route requests to a controller action
* Render a view from a controller action

## What is Rails? - Student Research / Pair / Share

#### Why should we use it?
- Because it is cool right? NO! Think critically about it

#### Answer these questions
- What is it?
- What problem does it solve?
- How does it solve?
- Alternatives?
- Why is it so popular?

#### Read:
- http://guides.rubyonrails.org/getting_started.html (Section 2)
- https://github.com/rails/rails

### Discussion of Pros:
- Framework: common solutions for common problems
- Highly opinionated, Rails is Omakase
- Designed to enforce best practices (MVC, REST, TDD)
- Teams! very efficient to get up to speed
- CONVENTION over Configuration - minimize decisions developers have to make. Only things that are different need to be different!
- Enforced directory structure
- Assets & Asset Pipeline
- Testing framework built in
- ORM built in
- Deployment
- LOTS of other features
  - Gemfile
  - DB config
  - Testing
  - Environments
  - Rake Tasks

#### Framing
- There is going to be an absurd amount of stuff you don't know. That's okay
- Goal of the course is to get ok with not knowing
- No big new features vs what we made w/ Sinatra, but getting the basics down first
- You will be making a lot of naming mistakes, just need to get used to the conventions
- Error messages are your friend! Read them
- Focus on just CV this class since routing and controllers are the newest/weirdest part

### How does Rails work?

- request/response cycle
  - [Diagram](http://f.cl.ly/items/081s3Y0D2y382s002y2l/rails.png)
  - Compare to Sinatra

- Separation of concerns
  - HTML, CSS, JavaScript
  - MVC

### The anatomy of a Rails project

- directory structure
  - `rails new scooby_app -d postgresql`

|File/ | Directory  Purpose
|:----- |:----- |
|app/ |   Core application (app) code, including models, views, controllers, and helpers
|app/ | assets  Applications assets such as cascading style sheets (CSS), JavaScript files, and images
|bin/ |   Binary executable files
|config/ |  Application configuration
|db/ |  Database files
|doc/ |   Documentation for the application
|lib/ |   Library modules
|lib/ | assets  Library assets such as cascading style sheets (CSS), JavaScript files, and images
|log/ |   Application log files
|public/ |  Data accessible to the public (e.g., web browsers), such as error pages
|bin/ | rails A program for generating code, opening console sessions, or starting a local server
|test/ |  Application tests (made obsolete by the spec/ directory in Section 3.1)
|tmp/ |   Temporary files
|vendor/ |  Third-party code such as plugins and gems
|vendor/ | assets Third-party assets such as cascading style sheets (CSS), JavaScript files, and images
|README.rdoc | A brief description of the application
|Rakefile | Utility tasks available via the rake command
|Gemfile | Gem requirements for this app
|Gemfile.lock |  A list of gems used to ensure that all copies of the app use the same gem versions
|config.ru | A configuration file for Rack middleware
|.gitignore | Patterns for files that should be ignored by Git

### Focus on
* app
* config/routes.rb
* db
* Gemfile

### Gems
* Gemfile
* Bundler / Bundle Install

### Rake
- What is Rake?
- Automate tasks
  - rake db:create (Check what happens in psql)
  - rake db:migrate

### Static Pages

First in depth:

- routes.rb
  - `rake routes`
  - WelcomeController (JUST AN EXAMPLE)
    - get '/shmee' => 'static#shmee'
    - root 'static#welcome'

- Write a route for welcome
- Write the controller (dogs_controller.rb)
- DogsController < ApplicationController

```
class WelcomeController < ApplicationController
    def index
      render :index
    end
end
```

- Create the View
  - Create a Folder (dogs)
  - action.html.erb
  - Layouts.erb

- Create an About Page
- Create the Hire us Page
- Create an FAQ Page