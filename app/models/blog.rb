class Blog < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :image, presence: true
  validates :content, presence: true,
             length: { maximum: 255 }
  belongs_to :user
end
