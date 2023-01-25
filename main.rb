words = File.read("words.txt").split(',')
#p words

word = words.sample
puts word

#print "Enter in a word: "
input = gets.chomp


def check_green(answer, guess)
	green = {}
	5.times do |index|
		if answer[index] == guess[index]
			green[index] = true
		else
			green[index] = false
		end
	end
	return green
end

def print_green(green)
	5.times do |index|
		if green[index]
			print 'G'
		else
			print '_'
		end
	end
	puts
end

print_green(check_green(word, input))