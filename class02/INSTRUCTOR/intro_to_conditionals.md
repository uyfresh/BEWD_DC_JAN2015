# Into to Conditionals

## Objectives

- Use boolean logic (&&, ||, !) to combine and manipulate boolean statements
- Use if, else, elsif statements to control logic flow in a Ruby program
- Use Ruby case statements

##### If/else/unless
```
if true
  puts "Its true!"
end

if (2 + 2) == 5
  puts "We have a problem"
end

if (2 + 2) == 5
  puts "We have a problem"
else
  puts "its not 1984 yet"
end

if (2 + 2) == 5
  puts "We have a problem"
elsif (2 + 2) != 5
  puts "its not 1984 yet"
else
  puts "I will never be seen"
end

unless name == "david"
  puts "Your name is definitely not david"
end
```

##### switch/case
```
grade = "B"
case grade
  when "A"
    puts 'Well done!'
  when "B"
    puts 'Try harder!'
  when "C"
    puts 'You need help!!!'
  else
    puts "You just making it up!"
end
```