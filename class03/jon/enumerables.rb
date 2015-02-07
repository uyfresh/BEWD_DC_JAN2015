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


greg_fav = users["Greg"][:favorite_numbers].select {|x| x.even?}
puts greg_fav

