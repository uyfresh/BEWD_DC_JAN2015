HERE IS WHAT MY TERMINAL LOOKED LIKED 

jedi_academy-# \c lpl778 
You are now connected to database "lpl778" as user "lpl778".
lpl778-# \d
            List of relations
 Schema |    Name     |   Type   | Owner  
--------+-------------+----------+--------
 public | cats        | table    | lpl778
 public | cats_id_seq | sequence | lpl778
 public | dogs        | table    | lpl778
 public | dogs_id_seq | sequence | lpl778
(4 rows)

lpl778-# \q
lpl778 ~/dev/BEWD_DC_JAN2015/class05/emma on master[!?]
$ ruby cat.rb

From: /Users/lpl778/dev/BEWD_DC_JAN2015/class05/emma/cat.rb @ line 13 :

     8: class Cat < ActiveRecord::Base
     9: 
    10: 
    11: end
    12: 
 => 13: binding.pry


[1] Pry(main)> Cat.all
[
    [0] #<Cat:0x007f93212c7d90> {
          :id => 1,
        :name => "meow",
         :age => 10
    },
    [1] #<Cat:0x007f93212c7930> {
          :id => 2,
        :name => "meow",
         :age => 1
    },
    [2] #<Cat:0x007f93212c74a8> {
          :id => 3,
        :name => "milk",
         :age => 13
    },
    [3] #<Cat:0x007f93212c7138> {
          :id => 4,
        :name => "fresca",
         :age => 4
    },
    [4] #<Cat:0x007f93212c6e18> {
          :id => 5,
        :name => "kitty",
         :age => 5
    },
    [5] #<Cat:0x007f93212c6b70> {
          :id => 6,
        :name => "butch",
         :age => 9
    }
]

[4] Pry(main)> Cat.where(:name=>'meow')
[
    [0] #<Cat:0x007f9701379e08> {
          :id => 1,
        :name => "meow",
         :age => 10
    },
    [1] #<Cat:0x007f9701379c00> {
          :id => 2,
        :name => "meow",
         :age => 1
    }
]

[1] Pry(main)> Cat.find(3)
#<Cat:0x007ff6f0849b50> {
      :id => 3,
    :name => "milk",
     :age => 13

[2] Pry(main)> Cat.where(:age=>13).where(:name=>'meow')
[]
[3] Pry(main)> Cat.where(:age=>1).where(:name=>'meow')
[
    [0] #<Cat:0x007ff6f1659830> {
          :id => 2,
        :name => "meow",
         :age => 1
    }