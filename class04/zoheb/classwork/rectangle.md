# Rectangle

## Process

* Define a new class called `Rectangle`.

* Initialize new rectangles with `@length` and `@width` instance variables. Receive these initial values as arguments of the `initialize` method.

* Define an `is_square?` method on the class. It should return true if the length and width are equal.

* Define an `area` method on the class. It should return the area of the rectangle.

* Define a `perimiter` method on the class. It should return the perimiter of the rectangle.

## Try it out...

After you've built your `Rectangle` class, set a `binding.pry` at the bottom, run your script, and try building a rectangle:

```
rect = Rectangle.new(100, 100)
rect.is_square?
 # -> true
```

## Keep going!

Add getters and setters for the length and width properties.