goodbye = "We are never ever ever getting back together"

puts goodbye

def reverse_words(sentence)
	sentence.split(' ').reverse.join(' ') 
end

puts reverse_words(goodbye)

def reverse_each_word(sentence)
	words = sentence.split(' ')
	rev_words = words.map {|word| word.reverse }

	rev_words.join(' ')
end
puts reverse_each_word(goodbye)

