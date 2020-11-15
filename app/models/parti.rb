class Parti < ApplicationRecord
  has_one_attached :photo
  has_many :avis_thematiques, dependent: :destroy
  has_many :thematiques, through: :avis_thematiques
  has_many :sous_thematiques, through: :avis_sous_thematiques
  has_many :avis_sous_thematiques, dependent: :destroy
  accepts_nested_attributes_for :avis_thematiques, allow_destroy: true
  accepts_nested_attributes_for :avis_sous_thematiques, allow_destroy: true
  after_create :create_blank_avis_thematiques, :create_blank_avis_sous_thematiques
  after_update :create_blank_avis_thematiques, :create_blank_avis_sous_thematiques
  searchkick

  def create_blank_avis_thematiques
    thematiques = Thematique.all
    thematiques.each do |thematique|
      AvisThematique.find_or_create_by(parti_id: id, thematique_id: thematique.id)
    end
  end

  def create_blank_avis_sous_thematiques
    sous_thematiques = SousThematique.all
    sous_thematiques.each do |sous_thematique|
      AvisSousThematique.find_or_create_by(parti_id: id, sous_thematique_id: sous_thematique.id)
    end
  end
end
