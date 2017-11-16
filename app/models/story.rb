class Story < ApplicationRecord
  default_scope { order(updated_at: :desc) }

  has_many :chapters
  validates :title, :presence => true
end
