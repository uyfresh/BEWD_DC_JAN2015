require_relative './moma'



Artist.destroy_all

Artist.create(
	[
		{ name: "Vincent Van Gogh", nationality: "France"},
		{ name: "Pablo Picasso", nationality: "Spain"},
		{ name: "Frida Khalo", nationality: "Mexico"},
		{ name: "Salvador Dali", nationality: "Spain"},
		{ name: "William de Kooning", nationality: "Netherlands"}
	]
)