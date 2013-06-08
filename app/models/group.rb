class Group < ActiveRecord::Base
  attr_accessible :name, :location, :size, :style, :bio, :fburl, :twitterurl, :weburl, :youtubeurl, :logo

  has_attached_file :logo, styles: { medium: "320x240>", thumb: "100x100#" }

  validates :name, presence: true
  validates :location, presence: true
  validates :bio, presence: true, length: { maximum: 600 }
  validates_attachment :logo, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
  														size: { less_than: 5.megabytes }
end
