class Movie < ApplicationRecord
  belongs_to :user

  validates :title, :url, :description, :user_id,  presence: true
  validates :title, length: { maximum: 100 }
  validates :url, length: { maximum: 200 }
  validates :description, length: { maximum: 255 }
  validates :url, format_url: true

  scope :newest, ->{ order(created_at: :desc) }
end
