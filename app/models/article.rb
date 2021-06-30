class Article < ApplicationRecord
  has_rich_text :contenu
  extend FriendlyId
    friendly_id :titre, use: :slugged
end
