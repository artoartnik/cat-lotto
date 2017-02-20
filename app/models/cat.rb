class Cat < ApplicationRecord
  mount_uploader :picture, CatPictureUploader
  validates :name, presence: true
end
