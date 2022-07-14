class Post < ApplicationRecord
  belongs_to :user

  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :content, presence: true

  include PgSearch
  pg_search_scope :search_everywhere, against: [:title, :content]
end
