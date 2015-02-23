require_relative './server'

Item.destroy_all

Item.create(
	[
		{item: "Mousepad", price: "12", location: "Bethesda"},
		{item: "Printer", price: "99", location: "Silver Spring"},
		{item: "Macbook Pro", price: "1299", location: "Clarendon"},
		{item: "Monitor", price: "150", location: "Eastern Market"},
		{item: "Cable", price: "5", location: "Dupont Circle"},
		{item: "Standing desk", price: "250", location: "Rosslyn"},
		{item: "Dell 15\" laptop", price: "899", location: "Clarendon"},
		{item: "USB cord", price: "12", location: "Adams Morgan"},
		{item: "Mouse", price: "19", location: "Clarendon"},
		{item: "iPhone", price: "299", location: "Bethesda"},
		{item: "Fitbit", price: "199", location: "Silver Spring"},
		{item: "Flat screen TV", price: "499", location: "Foggy Bottom"},
		{item: "Adaptor", price: "4", location: "Bethesda"}
	]
)
