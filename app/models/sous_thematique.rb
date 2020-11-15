class SousThematique < ApplicationRecord
  belongs_to :thematique
  has_many :avis_sous_thematiques, dependent: :destroy
  has_one_attached :photo
  after_create :add_sous_thematique_avis

  def add_sous_thematique_avis
    partis = Parti.all
    sous_thematique = SousThematique.last
    partis.each do |parti|
      AvisSousThematique.create(parti_id: parti.id, sous_thematique_id: sous_thematique.id)
    end
  end
  searchkick
end
