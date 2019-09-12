class Movie < ApplicationRecord
  belongs_to :user

  validates :title, :url, :description, :user_id,  presence: true
  validates :url, format_url: true

  scope :newest, ->{ order(created_at: :desc) }
end
