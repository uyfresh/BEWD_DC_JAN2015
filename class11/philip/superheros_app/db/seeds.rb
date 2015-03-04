
Superhero.destroy_all
Superhero.create([
  {name: 'The Flash', image_url: 'http://www.hollywoodreporter.com/sites/default/files/imagecache/thumbnail_570x321/2014/08/tf.jpg', power: 'Fast'},
  {name: 'Batman', image_url: 'http://cdn.collider.com/wp-content/uploads/batman-arkham-knight-1.jpg', power: 'Rich'},
  {name: 'Iron Man', image_url: 'http://prommanow.com/wp-content/uploads/2014/10/ironman3.jpg', power: 'Rich'}
])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
