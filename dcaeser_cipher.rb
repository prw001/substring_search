def caeser_cipher()
	puts "Text to be encrypted: "
	text = gets.chomp
	puts "Enter a number between 1 and 25: "
	code = gets.chomp.to_i
	letters = text.split('')
	orders = []
	for i in letters
		orders << i.ord
	end
	orders = shift_letters(orders, code)
	text = crypt_message(orders)
	puts text
end

def shift_letters(alphaVal, key)
	shift_vals = []
	for i in alphaVal
		if (i > 65 && i <= 90) || (i > 96 && i <= 122)
			if i > (90 - key) && i <= 90
				shift_vals << (64 + (key - (90 - i)))
			elsif i > (122 - key) && i <= 122
				shift_vals << (96 + (key - (122 - i)))
			else
				shift_vals << i + key
			end
		else
			shift_vals << i
		end
	end
	return shift_vals
end

def crypt_message(alphaNew)
	cryptText = ''
	for i in alphaNew
		cryptText << i.chr
	end
	return cryptText
end


caeser_cipher