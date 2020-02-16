class Like < ApplicationRecord
  belongs_to :post

  def add
    @likes.size + 1
  end

end