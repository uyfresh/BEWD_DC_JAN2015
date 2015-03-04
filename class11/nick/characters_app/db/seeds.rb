# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

characters = Character.create([
	{ name: 'Mac', image_url: 'http://www.celebritytattoodesign.com/wp-content/uploads/2011/10/rob-mcelhenny-tattoos1.jpg', quotes: '"And you know what happens with Tokyo drifting? It leads to bickering. Which, of course, leads to karate."' }, 
	{ name: 'Dennis', image_url: 'http://media2.giphy.com/media/7CaD8QiTqveXS/200_s.gif', quotes: '"If you arere in my room, you are always being filmed"' },
	{ name: 'Charlie', image_url: 'http://v023o.popscreen.com/eGF3c2N0MTI=_o_its-always-sunny-in-philadelphia-charlies-profile.jpg', quotes: '"Oh, get a job? Just get a job? Why dont I strap on my job helmet and squeeze down into a job cannon and fire off into job land, where jobs grow on jobbies?"' },
	{ name: 'Frank', image_url: 'https://33.media.tumblr.com/1c8907cc967faf53af9b33ea11549b42/tumblr_mvvp2saNiM1qa0n48o2_r2_500.gif', quotes: '"You gotta pay the troll toll, if you wanna get into that boys soul."' },
	{ name: 'Dee', image_url: 'http://badhairdays.net/wp-content/uploads/2013/09/sunny-gang-broke-dee.jpg', quotes: '"Im not asking you to do much. Just turn a blind eye while I rob this place stupid"' }
	]) 