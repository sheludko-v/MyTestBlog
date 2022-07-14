class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  include PgSearch
  pg_search_scope :search_everywhere, against: [:title, :content]
end
