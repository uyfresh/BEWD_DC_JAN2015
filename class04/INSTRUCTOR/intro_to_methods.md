## Intro to Methods

#### Learning Objectives
* Explain the principle of DRY
* Explain what a method is and why it is useful
* "Define" methods that take parameters
* return values from a method
* "Call" methods with arguments

#####DRY
  * What is DRY? Don't Repeat Yourself
  * Why would we use a method? To abstract oft-repeated processes into a single line of code

#####Methods
  * Definition:
    * A **method** is a reusable piece of code that can take inputs and will return output.
  * Why would we use one?
    * to abstract oft-repeated processes into a single line of code
    * to give semantic (sensible) names to common processes
  * How do you write a method? (go through the example below step by step)
    * `def` and `end`
    * `method_name()` **WITH PARENS**
    * `return` 

####Calculate the area, taking two parameters: length and width
```ruby
def area(length, width)
  puts "length: #{length}"
  puts "width: #{width}"
  return length * width
end
```

####Calculate the volume, taking three parameters: length, width and height
```ruby
def volume(length, width, height)
  return length * width * height
end

def volume(length, width, height)
  volume = area(length,width) * height
  return volume
end
```

####Calculate the square of a number
```
def square(x)
  return x * x
end
```

####Calculate the cube of a number
```
def cube(x)
  return x ** 3
end
```

- The Difference Between Defining a Function and Calling a Function 
- Scope within the function
- Methods Activity...?


