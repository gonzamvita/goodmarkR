class RenameColumnInBookmarkTypes < ActiveRecord::Migration
  def change
    rename_column :bookmarks, :bookmark_types_id, :bookmark_type_id
  end
end
