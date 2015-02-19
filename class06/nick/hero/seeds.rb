require_relative './hero'

Hero.delete_all

Hero.create([
  {:name => "Superman", :alter_ego => "Clark Kent",:has_cape => true, :power => "strength", :arch_nemisis => "Lex Luthor"},
  {:name => "Wonder Woman", :alter_ego => "Diana Prince",:has_cape => false, :power => "strength", :arch_nemisis => "Cheetah"},
  {:name => "Batman", :alter_ego => "Bruce Wayne",:has_cape => true, :power => "intelligence", :arch_nemisis => "Joker"},
  {:name => "Mr Incredible", :alter_ego => "Robert Parr",:has_cape => false, :power => "strength", :arch_nemisis => "Syndrome"},
  {:name => "Professor X", :alter_ego => "Charles Xavier",:has_cape => false, :power => "psychic", :arch_nemisis => "Magneto"},
  {:name => "Spiderman", :alter_ego => "Peter Parker",:has_cape => false, :power => "wall climbing", :arch_nemisis => "Doctor Octopus"},
  {:name => "Captain America", :alter_ego => "Steve Rogers",:has_cape => false, :power => "super soldier", :arch_nemisis => "Red Skull"},
  {:name => "Iron Man", :alter_ego => "Tony Stark",:has_cape => false, :power => "suit", :arch_nemisis => "Mandarin"}
])