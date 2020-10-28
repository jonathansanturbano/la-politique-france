class SousThematique < ApplicationRecord
  belongs_to :thematique
  has_one_attached :photo
end
