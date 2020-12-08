class Personnalite < ApplicationRecord
  belongs_to :parti

  include AlgoliaSearch

  algoliasearch do
    attributes :nom
  end
end
