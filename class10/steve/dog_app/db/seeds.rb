# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
fido = Dog.create([{ name: 'fido', image_url: 'http://cdn.playbuzz.com/cdn/7dd8deae-3e00-4fd3-83be-a306e22e81de/c50bdb2e-95bc-4423-862f-83e949001fbf.jpg'}])
spot = Dog.create([{ name: 'spot', image_url: 'http://shakacity.com/sites/default/files/dog_0.jpg'}])