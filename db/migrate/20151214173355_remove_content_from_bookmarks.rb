class RemoveContentFromBookmarks < ActiveRecord::Migration
  def change
    remove_column :bookmarks, :content, :string
  end
end
