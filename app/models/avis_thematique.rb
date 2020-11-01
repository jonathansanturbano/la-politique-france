class AvisThematique < ApplicationRecord
  belongs_to :parti, optional: true
  belongs_to :thematique
  attribute :liens, :string, array: true
end
