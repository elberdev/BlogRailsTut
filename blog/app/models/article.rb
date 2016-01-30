class Article < ActiveRecord::Base

  has_many :comments, dependent: :destroy
  # this line validates that every article has a title of at least 5
  # characters
  validates :title, presence: true, length: { minimum: 5 }

end
