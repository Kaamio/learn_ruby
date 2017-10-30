class Book
	attr_accessor :title

	
	def title=(str)

		smallwords = ["a", "an", "the", "of","and", "in" ]
		sanat = str.split
		if sanat[0] == "the"
				sanat[0].capitalize!
			end
		for i in 0...sanat.length

			if !smallwords.include?(sanat[i])
				sanat[i].capitalize!
			end
			
		end
		@title = sanat.join(" ")
					
		return @title
	end


end

@kirja = Book.new


puts @kirja.title