def start_up()
	puts "Insert text: "
	text = gets.chomp.downcase
	puts "Insert word list (separate words with comma: )"
	dict = gets.chomp.downcase.split(', ')
	sub_strings(text, dict)
end

def sub_strings(text, dict)
	wordfreq = {}
	for i in dict
		wordfreq[i] = 0
	end
	for word in text.split(' ')
		for entry in dict
			if word.include?(entry)
				wordfreq[entry] += 1
			end
		end
	end
	puts wordfreq
end

start_up()