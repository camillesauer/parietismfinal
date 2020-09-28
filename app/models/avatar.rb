class Avatar < ApplicationRecord
  belongs_to :category
  validates :nom, :prenom, :img_avatar, :bio_url, :role, :category_id, presence: true
end
