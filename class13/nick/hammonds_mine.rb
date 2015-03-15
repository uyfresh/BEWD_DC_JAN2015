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
sites = mine[:digs].length

puts "Total number of dig sites: #{ 0 }"


# 2) Reference:
name = mine[:digs][1][:name]

puts "Name of the second dig site: #{ '?' }"


# 3) Reference:
name = mine[:donors][0]['name']

puts "Name of the first donor: #{ '?' }"


# 4) Solve programatically:
puts "Age of the dig with an id of 7: #{ 0 }"


# 5) Solve programatically:
puts "Number of active digs: #{ 0 }"


# 6) Solve programatically:
total = 0
mine[:digs].select do |dig|
  if dig[:continuent] == 'North America'
    total += dig[:finds].length
  end
end

puts "Total number of finds in North America: #{ 0 }"
