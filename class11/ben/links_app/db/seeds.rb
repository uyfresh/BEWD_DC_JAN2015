# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Link.destroy_all

Link.create([
	{link_url: 'http://techcrunch.com/2015/03/02/stratos-announces-its-universal-credit-card-to-rule-them-all/',
	author: 'Ben Collins',
	description: 'Stratos Card aims to unify Credit Cards',
	plus_count: 7,
	minus_count: 2},
	{link_url: 'http://techcrunch.com/2015/03/03/xiaomi-app-store-china-only/',
	author: 'Ben Collins',
	description: 'Xiaomi no plans to expand app store outside China',
	plus_count: 3,
	minus_count: 4},
	{link_url: 'http://learn.shayhowe.com/html-css/',
	author: 'Ben Collins',
	description: 'Shay Howe Learn to Code HTML/CSS - great resource'},
	{link_url: 'http://startupstash.com/',
	author: 'Alexis Grant',
	description: 'Great set of resources for the startup community',
	plus_count: 19,
	minus_count: 1},
	{link_url: 'http://www.postgresql.org/',
	author: 'Robert Collins',
	description: 'Postgresql resources page',
	plus_count: 1}
])