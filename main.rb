words = File.read("words.txt").split(',')
#p words

word = words.sample
puts word

#print "Enter in a word: "
input = gets.chomp


def check(answer, guess)
	color = {}

	# init
	5.times do |index|
		color[index] = 0
	end

	# green
	5.times do |index|
		if answer[index] == guess[index]
			color[index] = :green
		end
	end

	# yellow
	def count(word)
		counts = {}
		counts.default = 0

		5.times do |index|
			char = word[index]
			if counts[char]
				counts[char] += 1
			end
		end
		return counts
	end

	answer_counts = count(answer)
	guess_counts = count(guess)
	yellow_counts = {}

	answer_counts.each do |char, count|
		yellow_counts[char] = [count, guess_counts[char]].min
	end

	guess.each_char.with_index do |char, index|
		p [char, index]
	end

	return color
end

# def print_green(green)
# 	5.times do |index|
# 		if green[index]
# 			print 'G'
# 		else
# 			print '_'
# 		end
# 	end
# 	puts
# end

p check(word, input)