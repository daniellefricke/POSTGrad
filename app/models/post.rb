class Post < ApplicationRecord
  belong_to: school
  have_many: comments
end
