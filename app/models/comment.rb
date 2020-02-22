class Comment < ApplicationRecord
  include ActsAsVisibleFounder

  belongs_to :post

  validates :body, presence: true
end