class Post < ApplicationRecord
  belong_to :school
  has_many :comments
end
