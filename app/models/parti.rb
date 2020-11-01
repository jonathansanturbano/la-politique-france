class Parti < ApplicationRecord
  has_one_attached :photo
  has_many :avis_thematiques, dependent: :destroy
  has_many :thematiques, through: :avis_thematiques
  accepts_nested_attributes_for :avis_thematiques
  # after_initialize :create_blank_avis
  # attr_accessor :array

  # def create_blank_avis
  #   self.array = []
  #   thematiques = Thematique.all
  #   thematiques.each do |thematique|
  #     array << AvisThematique.new(thematique_id: thematique.id)
  #   end
  # end
end
