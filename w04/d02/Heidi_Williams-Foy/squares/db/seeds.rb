# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Square.create([
	{
		side_length: 10,
		border_radius: 5,
		color: "cornflowerblue"
	},
	{
		side_length: 20,
		border_radius: 10,
		color: "gold"
	},
	{
		side_length: 30,
		border_radius: 15,
		color: "purple"
	}
])