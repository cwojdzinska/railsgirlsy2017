class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates_presence_of :name
  validates_uniqueness_of :name
  validates :name, length: { in: 6..20 }
end
