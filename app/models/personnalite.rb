class Personnalite < ApplicationRecord
  belongs_to :parti
  has_one_attached :photo
end
