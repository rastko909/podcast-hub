class Podcast < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :channel_image, presence: true

  has_many :episodes
end
