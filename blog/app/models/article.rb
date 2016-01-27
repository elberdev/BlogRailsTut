class Article < ActiveRecord::Base

	# this line validates that every article has a title of at least 5 
	# characters
	validates :title, presence: true, length: { minimum: 5 }

end
