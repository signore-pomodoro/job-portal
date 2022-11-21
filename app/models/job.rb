class Job < ApplicationRecord
  belongs_to :employer
  has_rich_text :description
  has_one_attached :image
end
