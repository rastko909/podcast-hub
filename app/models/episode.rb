class Episode < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :mp3_file, presence: true
  belongs_to :podcast
end
