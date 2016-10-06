class Book
	attr_accessor :title

	def title
		words = "#{@title}".split(/\W+/)
		words.map! {|curr_word|
		#if word is listed below do not capitalize
		if %w(the and in of a an).include?(curr_word)
	      curr_word
	    else
	      curr_word.capitalize
	    end
		}
		#capitalize first word
		words[0] = words[0].capitalize
	    words.join(" ")
	end
end
