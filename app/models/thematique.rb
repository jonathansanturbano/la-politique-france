class Thematique < ApplicationRecord
  has_many :sous_thematiques, dependent: :destroy
  accepts_nested_attributes_for :sous_thematiques
  has_one_attached :photo
end
