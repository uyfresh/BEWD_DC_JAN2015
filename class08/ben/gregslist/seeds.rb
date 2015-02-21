require_relative './server'

Item.destroy_all

Item.create(
	[
		{item: "Mousepad", price: "12", location: "Bethesda"},
		{item: "Printer", price: "99", location: "Silver Spring"},
		{item: "Macbook Pro", price: "1299", location: "Clarendon"},
		{item: "Monitor", price: "150", location: "Eastern Market"},
		{item: "Cable", price: "5", location: "Dupont Circle"},
		{item: "Standing desk", price: "250", location: "Rosslyn"}
	]
)
