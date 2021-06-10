class Personnalite < ApplicationRecord
  extend FriendlyId
  friendly_id :nom, use: :slugged
  belongs_to :parti
  has_rich_text :rich_resume
  has_rich_text :rich_propositions

  include AlgoliaSearch

  algoliasearch do
    attributes :nom
  end
end
