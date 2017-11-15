class Chapter < ApplicationRecord
  belongs_to :story
  validates :sentence, :presence => true
  validates :author, :presence => true
  validates :pic, :presence => true
end
