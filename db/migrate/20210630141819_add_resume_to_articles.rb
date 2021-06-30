class AddResumeToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :resume, :text
  end
end
