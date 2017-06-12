class Post < ApplicationRecord
  belongs_to :school
  belongs_to :user, optional: true
  has_many :comments
end
