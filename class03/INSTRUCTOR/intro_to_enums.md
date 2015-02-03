## Intro to Enumerations

#### Learning Objectives

* What is an Enumerable?
* What is Enumeration?
* What is a block?
* What are common enumeration methods?
* What's unique about bang! methods?

---

#### Enumerables are…

* Arrays: ["a", "b", "c"]
* Hashes: {a: true, b: true, c: false}


#### Syntaxes…

Block:  

```
array.each do |i|
	puts i
end
```

Inline:  

```
array.each { |i| puts i }
```

#### Common enumeration methods

* .each
* .map
* .select (reject)
* .max
* .count
* .reduce
* .each_with_index

#### Bang! Methods

Bang methods modify the object on which they're called, rather than returning a modified copy of the object.

* .shuffle
* .shuffle!

```
the_array = [1, 2, 3, 4, 5]

puts "\nShuffled: "+ the_array.shuffle.join(', ')
puts "After shuffle: "+ the_array.join(', ')

puts "\nShuffled!: "+ the_array.shuffle!.join(', ')
puts "After shuffle!: "+ the_array.join(', ')
```