#write your code here
def translate word
	vowels = ["a", "e", "i", "o", "u"]
	wordCount = 0
	words = word.split(/\W+/)
	# iterate through every word in sentence
	words.map {|curr_word|
	#convert each word to chars
	chars = curr_word.chars
	charCount = -1
	catch :vowel_found do
		#check each char
    	chars.each do |char|
    		charCount += 1
    		#compare each char to the vowel array to see if a vowel
    		vowels.each do |vowel|
    			if(char == vowel)
    				#special case
    				if (curr_word[charCount-1] == "q" && curr_word[charCount] == "u")
    					words[wordCount] = (curr_word[charCount+1..-1] + curr_word[0..charCount] + "ay")
    					wordCount += 1
    					throw :vowel_found
    				end
    				#first letter vowel case
    				if(curr_word[0] == vowel)
    					words[wordCount] = curr_word + "ay"
    				else
    				#default
    					words[wordCount] = (curr_word[charCount..-1] + curr_word[0..charCount-1] + "ay")
    				end
				    wordCount += 1
					throw :vowel_found
    			end
    		end
    	end
    end
	}
    return words.join(" ")
end
