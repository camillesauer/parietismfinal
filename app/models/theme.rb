class Theme < ApplicationRecord
  has_many :rir_articles
  validates :name_theme, :img_theme, presence: true
end
