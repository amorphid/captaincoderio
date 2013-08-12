class AddNormalizedTitleToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :normalized_title, :string
  end
end
