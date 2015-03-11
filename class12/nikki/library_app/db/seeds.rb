# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.destroy_all
ml = Author.create({first_name: "Malinda" ,  last_name: "Lo" ,  bio: "Super awesome lady who wrote some super awesome books" })
bs = Author.create({first_name: "Benjanun", last_name: "Sriduankaew", bio: "Super amazing lady who wrote a lot of amazing short stories"})

