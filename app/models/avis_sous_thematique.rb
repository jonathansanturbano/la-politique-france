class AvisSousThematique < ApplicationRecord
  belongs_to :sous_thematique
  belongs_to :parti
  validates_uniqueness_of :sous_thematique_id, scope: :parti_id
  searchkick
end
