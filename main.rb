words = File.read("words.txt").split(',')
#p words

word = words.sample
puts word

#print "Enter in a word: "
#input = gets.chomp
input = 'guess'



word.each_char.with_index do |char, index|
	p [char, index]
end