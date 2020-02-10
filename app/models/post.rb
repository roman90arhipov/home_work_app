class Post < ApplicationRecord
  has_many :likes, :dependent => :destroy
  validates :title, presence: true, length: { minimum: 5 }
end