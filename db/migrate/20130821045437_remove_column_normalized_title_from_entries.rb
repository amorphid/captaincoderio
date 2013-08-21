class RemoveColumnNormalizedTitleFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :normalized_title
  end
end
