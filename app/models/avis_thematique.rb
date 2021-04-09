class AvisThematique < ApplicationRecord
  belongs_to :parti, optional: true
  belongs_to :thematique
  attribute :liens, :string, array: true
  validates_uniqueness_of :parti_id, scope: :thematique_id
  has_rich_text :rich_opinion_majoritaire
  has_rich_text :rich_divergences
  has_rich_text :rich_liens
end
