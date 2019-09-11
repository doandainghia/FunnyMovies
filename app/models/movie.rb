class Movie < ApplicationRecord
  belongs_to :user

  validates :title, :url, :description, :user_id,  presence: true
end
