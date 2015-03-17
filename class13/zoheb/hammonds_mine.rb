mine = {
  budget_year: 1990,
  donors: [
    {
      'contribution' => 1000000,
      'id' => 7,
      'name' => 'International Genetics, Inc.'
    },
    {
      'contribution' => 500000,
      'id' => 1,
      'name' => 'John Hammond Foundation'
    }
  ],
  digs: [
    {
      age: 'Jurassic',
      budget: 250000,
      continent: 'North America',
      country: 'USA',
      finds: [
        {
          genus: 'Stegosaurus',
          specimens: 18
        },
        {
          genus: 'Allosaurus',
          specimens: 4
        },
        {
          genus: 'Brachiosaurus',
          specimens: 37
        }
      ],
      id: 2,
      is_active: true,
      name: 'Bone Cabin Quarry, Wyoming'
    },
    {
      age: 'Late Cretaceous',
      budget: 500000,
      continent: 'Africa',
      country: 'Morocco',
      finds: [
        {
          genus: 'Brachiosaurus',
          specimens: 14
        },
        {
          genus: 'Spinosaurus',
          specimens: 1
        }
      ],
      id: 7,
      is_active: true,
      name: 'Kem Kem Beds'
    },
    {
      age: 'Cretaceous',
      budget: 650000,
      continent: 'North America',
      country: 'Mexico',
      finds: [
        {
          genus: 'Ceratopsia',
          specimens: 7
        },
        {
          genus: 'Pteraichnus',
          specimens: 82
        }
      ],
      id: 9,
      is_active: false,
      name: 'Cerro del Pueblo Formation'
    }
  ],
  supervisor: 'Hammond, John'
};

# Write code to print out the following:

# 1) Reference:
sites = mine[:digs].count
puts "Total number of dig sites: #{sites}"


# 2) Reference:
digs = mine[:digs]
dig2 = digs[1]
dig2name = dig2[:name]
puts "Name of the second dig site: #{dig2name}"


# 3) Reference:
donors = mine[:donors]
donor1 = donors[0]
donor1name = donor1['name']
puts "Name of the first donor: #{donor1name}"


# 4) Solve programatically:
dig = mine[:digs].find{|d| d[:id] == 7}
age = dig[:age]
puts "Age of the dig with an id of 7: #{age}"


# 5) Solve programatically:
active = mine[:digs].select{|d| d[:is_active]}
puts "Number of active digs: #{active.length}"


# 6) Solve programatically:
total = 0
mine[:digs].select do |dig|
  if dig{:continent} = "North America"
    total += dig[:finds].length
  end
end
puts "Total number of finds in North America: #{ 0 }"