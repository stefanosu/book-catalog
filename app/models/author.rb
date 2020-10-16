class Author < ApplicationRecord
  has_many :books 
  has_many :categories, through: :books

end
