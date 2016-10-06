#write your code here
def echo word
	word
end
def shout word
	word.upcase
end
def repeat word,num=2
	("#{word} "*num).chop
end
def start_of_word word,num=1
	word[0..num-1]
end
def first_word word
	word.split(/\W+/)[0]
end
def titleize word
	ok = word.split(/\W+/)
	ok.map! {|curr_word|
	if %w(the and over in of).include?(curr_word)
      curr_word
    else
      curr_word.capitalize
    end
	}
	ok[0] = ok[0].capitalize
    ok.join(" ")
end
