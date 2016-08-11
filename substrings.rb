def substrings text, dictionary
	result = {}
	text = text.downcase
	words = text.split(/\W+/).map {|w| w.strip}
	words.each do |word|
		word = word.downcase
		puts word
		dictionary.each do |substring|
			if word.include? substring
				times = word.scan(/(?=#{substring})/).count
				result.has_key?(substring) ? result[substring] += times : result[substring] = times 
			end
		end
	end

	puts result
end

puts "Give me some text:"
text = gets
puts "Now give me your dictionary(use ',' to split words): "
dict = gets
dict = dict.split(",").map {|w| w.strip}
substrings text, dict