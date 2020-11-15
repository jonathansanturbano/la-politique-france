class AvisSousThematique < ApplicationRecord
  belongs_to :sous_thematique
  belongs_to :parti
  validates :sous_thematique, uniqueness: { scope: :parti }
  searchkick
end
