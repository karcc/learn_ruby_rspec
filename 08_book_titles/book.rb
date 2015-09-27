class Book
	

def title=(new_title)
	book_title = new_title.split(" ")
	book_title = [book_title[0].capitalize] +
	book_title[1..-1].map do |word|
		exception_words = %w{the an a and in of}
		if exception_words.include? word
			word
		else
			word.capitalize
		end
	end
		@title = book_title.join(" ")
	end

	def title
		@title
	end

end