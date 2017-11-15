class Story < ApplicationRecord
  has_many :chapters
  validates :title, :presence => true
end
