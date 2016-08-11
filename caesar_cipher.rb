
def caesar_cipher(string, shift)
	caesar_string = ""
	string.each_char do |c|
		if (65..90).include? c.ord
			c = (c.ord + shift % 26).chr
			if c.ord > 90
				c = (c.ord - 26).chr
			end
		elsif (97..122).include? c.ord
			c = (c.ord + shift % 26).chr
			if c.ord > 122
				c = (c.ord - 26).chr
			end
		end

		caesar_string += c
	end
	caesar_string
end

print "What string would you like to encrypt: "
str = gets
print "Shift: "
shift = gets
puts caesar_cipher(str, shift.to_i)