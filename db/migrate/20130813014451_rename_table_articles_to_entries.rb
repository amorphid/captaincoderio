class RenameTableArticlesToEntries < ActiveRecord::Migration
  def change
    rename_table :articles, :entries
  end
end
