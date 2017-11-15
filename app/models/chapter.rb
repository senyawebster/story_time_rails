class Chapter < ApplicationRecord
  belongs_to :story
  validates :sentence, :presence => true
  validates :author, :presence => true
  validates :pic, :presence => true

  def next
    story.chapters.where("id > ?", id).first
  end

  def prev
    story.chapters.where("id < ?", id).last
  end

end
