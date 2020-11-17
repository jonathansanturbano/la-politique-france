class AvisThematique < ApplicationRecord
  belongs_to :parti, optional: true
  belongs_to :thematique
  attribute :liens, :string, array: true
  validates_uniqueness_of :parti_id, scope: :thematique_id
  # searchkick
end
