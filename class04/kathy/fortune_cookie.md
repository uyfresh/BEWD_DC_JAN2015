F# Fortune Cookie

**Objectives**

- Work with objects and instances.
- Practice class architecture.

## Process

* Make a new class called `FortuneCookie`.

* Within the `initialize` method, set two instance variables:
  * `@wrapped = true`
  * `@cracked = false`

* Define a `wrapped?` method on the class. It should return the cookie's wrapped status.

* Define a `cracked?` method on the class. It should return the cookie's cracked status.

* Define an `unwrap` method on the class. It should set the cookie as not wrapped.

* Define a `crack` method on the class. This method should do the following:
  * **If the cookie is still wrapped**, return "You need to unwrap it first".
  * **If the cookie is unwrapped**, then set the cookie as cracked.
  
* Define a `read` method on the class. This method should do the following:
  * **If the cookie is still wrapped**, return "You need to unwrap it, then crack it".
  * **If the cookie has not been cracked**, return "You still need to crack it".
  * **If the cookie has been wrapped AND cracked**, return "The OO is strong with you".
  
## Make sure it works...

After you've built your `FortuneCookie` class, set a `binding.pry` at the bottom, run your script, and try out your fortune. The following process should work:

```
cookie = FortuneCookie.new
cookie.crack
 # -> "You need to unwrap it first."
cookie.read
 # -> "You need to unwrap it, then crack it."
 
cookie.unwrap
cookie.read
 # -> "You still need to crack it!"
 
cookie.crack
cookie.read
 # -> "The OO is strong with you."
```

## Bonus!

Initialize your cookies with another instance variable that holds an array of your own fortunes. When the user claims their fortune, give them a random fortune from this array.