class Group < ActiveRecord::Base
  attr_accessible :name, :location, :size, :style, :bio, :fburl, :twitterurl, 
  								:weburl, :youtubeurl, :logo, :grouptype
  enumerate :grouptype, :with => Grouptype

  has_attached_file :logo, styles: { medium: "320x240>", thumb: "50x50>" }

  validates :name, presence: true
  validates :location, presence: true
  validates :grouptype, presence: true
  validates :size, presence: true
  validates :style, presence: true
  validates_attachment :logo, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
  														size: { less_than: 5.megabytes }

  
end