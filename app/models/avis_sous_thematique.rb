class AvisSousThematique < ApplicationRecord
  belongs_to :sous_thematique
  belongs_to :parti
  validates_uniqueness_of :sous_thematique_id, scope: :parti_id
  has_rich_text :rich_liens
  has_rich_text :rich_avis
end
