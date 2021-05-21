class Thematique < ApplicationRecord
  has_many :sous_thematiques, dependent: :destroy
  has_many :avis_thematiques, dependent: :destroy
  accepts_nested_attributes_for :sous_thematiques
  has_one_attached :photo
  after_create :add_thematique_avis
  has_rich_text :description

  # include AlgoliaSearch

  # algoliasearch do
  #   attributes :titre
  # end

  def add_thematique_avis
    partis = Parti.all
    thematique = Thematique.last
    partis.each do |parti|
      AvisThematique.create(parti_id: parti.id, thematique_id: thematique.id)
    end
  end
end
