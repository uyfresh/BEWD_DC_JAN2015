# Intro to Methods

**Learning Objectives**

* Explain the principle of DRY
* Explain what a method is and why it is useful
* "Define" methods that take arguments
* "Call" methods with parameters
* "Return" values from a method

## What is a method?

A method is a reusable block of code that may accept inputs and will return an output. They are similar to *functions* and *lambdas* in other languages.

## Why do we use methods?

- What is DRY? Don't Repeat Yourself.
- Methods keep code DRY by avoiding repitition.
- Methods give sensible names to common processes.
- Methods isolate operations into discrete units.

## Basic Syntax

A method block is defined with the `def` keyword, followed by a method name. The method is a reusable block of code that may be *called* upon repeatedly to perform a task:

```
def say_hello()
  puts "hi"
end

say_hello()
# "hi"

say_hello()
# "hi"
```
A method block is not run until it is explicitly called upon. A method is called by referencing its name, followed by parenthesis.

## Arguments

A method may accept any number of *argument* variables as part of its definition. These argument variables are populated by data passed in through a method call.

```
def parrot(name, desire)
  puts "#{name} wants a #{desire}"
end

parrot("Poly", "cracker")
# "Poly wants a cracker"

parrot("Iago", "biscuit")
# "Iago wants a biscuit"
```

### Argument defaults

Ruby allows default values to be assigned for arguments. When an argument default is set, that argument may be omitted from the method call.

```
def smart_parrot(name, desire="cracker")
  puts "#{name} wants a #{desire}"
end

smart_parrot("Poly")
# "Poly wants a cracker"
```

## Return

A method may *return* a value. This value is the result of whatever operation the method has performed:

```
def add(a, b)
  return a + b
end

sum1 = add(5, 10)
sum2 = add(50, 100)
```

When calling a method, it's quite common to assign the returned value to a variable.

## Scope

Methods are *encapsulated* blocks that hide their internal workings. Variables defined within a method are said to be within the method's *scope*:

```
def my_method(a)
  b = 5
end
```

Nothing outside of a method can see into its scope. Likewise, a method cannot reference variables from outside of its scope:

```
a = 10

def my_method()
  b = 5
  puts a  # Error: cannot see outside!
end

puts b  # Error: cannot see inside!
```

However, methods *may* reference other methods:

```
def test1(a)
  return a + 1
end

def test2(b)
  return test1(b) + 5
end

puts test1(0)  # 1
puts test2(0)  # 6
```

Be careful! Methods ARE proceedural, and therefore rely on script execution order (top-to-bottom) to become available. For example, this code is BROKEN:

```
def test2(b)
  return test1(b) + 5
end

puts test2(0)
# undefined method `test1' for main:Object (NoMethodError)

def test1(a)
  return a + 1
end
```

Why is it broken? Well, the `test2` method is called and attempts to reference `test1` before it has been defined.

## Activity

####Calculate the area, taking two parameters: length and width

```
def area(length, width)
  puts "length: #{length}"
  puts "width: #{width}"
  return length * width
end
```

####Calculate the volume, taking three parameters: length, width and height

```
def volume(length, width, height)
  return length * width * height
end

def volume(length, width, height)
  volume = area(length,width) * height
  return volume
end
```