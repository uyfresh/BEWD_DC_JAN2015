# Sinatra Warmup - Scooby Doo!

## Step 1

Create a new Sinatra app. Set up the following routes:

- '/' : Home page with an image of the Scooby Gang.
- '/about' : A static page with a description of the game and an image of the Mystery Machine

Use a `layout.erb` file to DRY up your views.

## Step 2

- Add a form to the homepage that allows the user to guess who they think the villain is. It should take them to a '/guess' page that will either say:
  - "And I would have gotten away with it too, if it weren't for you meddling kids!" if they guessed right
  - "Guess again!" if they guessed wrong