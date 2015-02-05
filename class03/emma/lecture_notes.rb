
#ARRAYS
# favorite_colors = [ 'blue', 'green', 'purple']
# x = 0

# while   x < 5 
# 	 x = x + 1
# 	 favorite_colors.push ([favorite_colors.shuffle])
# end

# puts favorite_colors
# puts ''
# puts favorite_colors.length

#HASH MAPS 
# favorite_colors = {}
# favorite_colors ['nikki'] = 'purple'
# favorite_colors ['adam'] = 'pink'
# favorite_colors ['emma'] = 'purple'
# puts favorite_colors.keys
# puts favorite_colors.values

users = {
      "Peter" => {
        :github => "peterylai",
        :favorite_numbers => [12, 42, 75]
      },
      "Greg" => {
        :github => "gmac",
        :favorite_numbers => [11, 99, 24]
      },
      "Martin" => {
        :github => "mobjohnson",
        :favorite_numbers => [17, 13, 21]
      }
}

puts users['Martin[:github]']

    
  