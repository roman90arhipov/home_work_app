class Post < ApplicationRecord
  include ActsAsVisibleFounder

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 3 }

  scope :hidden, -> { where(is_hidden: true) }
end