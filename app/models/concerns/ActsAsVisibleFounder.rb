module ActsAsVisibleFounder
  extend ActiveSupport::Concern

  included do
    scope :visible, -> { where(is_hidden: false) }
  end

end