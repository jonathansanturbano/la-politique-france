class AddRichDescriptionToPartis < ActiveRecord::Migration[6.0]
  def up
    Parti.find_each do |parti|
      parti.update(rich_description: parti.description)
    end
  end

  def down
    Parti.find_each do |parti|
      parti.update(description: parti.rich_description)
      parti.update(rich_description: nil)
    end
  end
end
