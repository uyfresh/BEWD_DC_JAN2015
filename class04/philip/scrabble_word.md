# Scrabble Word

**Objectives**

- Work with objects and instances.
- Use getters, setters, and instance variables.
- Practice enumerations.


## Process

* Define a class named `ScrabbleWord`.

* Make the class `initialize` method accept one argument, `word`, and store it as an instance variable called `@word`.

* Also within the `initialize` method, copy in the following hash instance variable containing letter/score mappings:

```
@points = {
  'a' => 1,
  'b' => 3,
  'c' => 3,
  'd' => 2,
  'e' => 1,
  'f' => 4,
  'g' => 2,
  'h' => 4,
  'i' => 1,
  'j' => 8,
  'k' => 5,
  'l' => 1,
  'm' => 3,
  'n' => 1,
  'o' => 1,
  'p' => 3,
  'q' => 10,
  'r' => 1,
  's' => 1,
  't' => 1,
  'u' => 1,
  'v' => 4,
  'w' => 4,
  'x' => 8,
  'y' => 4,
  'z' => 10
}
```

* Define a "getter" method for the instance variable `@word`. It should return the word as a lowercase string.

* Define a "setter" method for the instance variable `@word`. It should set the word as a lowercase string.

* Define a method `score`. Calling this method should look up points for each letter in the word, and then return the sum of all letter points. You'll need to split the word into a letters array, map each letter into a score, and then return the sum of the scores.

* Define a method `multiplier_score` that accepts a numeric multiplier as an argument, and returns a multiplied version of the score (ie: double or triple word score).

## Make sure it works...

After you've built your `ScrabbleWord` class, set a `binding.pry` at the bottom, run your script, and try scoring some words. The following process should work:

```
zebra = ScrabbleWord.new('Zebra')
zebra.word
 # -> "zebra"
zebra.score
 # -> 16
zebra.multiplier_score(3)
 # -> 48
```