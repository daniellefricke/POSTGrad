class Post < ApplicationRecord
  belongs_to :school
  has_many :comments
end
