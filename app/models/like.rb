class Like < ApplicationRecord
  include ActsAsVisibleFounder

  belongs_to :post
end