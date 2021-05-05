class Personnalite < ApplicationRecord
  belongs_to :parti
  has_rich_text :rich_resume
  has_rich_text :rich_propositions

  include AlgoliaSearch

  algoliasearch do
    attributes :nom
  end
end
