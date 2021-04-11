class Post < ApplicationRecord
  belongs_to :user
  has_many :coments
  has_many :likes
end
