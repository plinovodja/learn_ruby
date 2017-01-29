class Book
# write your code here
	attr_reader :title
	
	def title= (book_name)
	
	  small_words = ["a", "an", "the", "and", "in", "of"]
	  new_name = []
	
	    book_name.split.each do |word|
	      word.capitalize! unless small_words.include?(word) 
	      new_name << word	
	      new_name.first.capitalize!    
	    end
	  
	  @title = new_name.join(" ")
	
	end
end
