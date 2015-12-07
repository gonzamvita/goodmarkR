class AddTypeToBookmark < ActiveRecord::Migration
  def change
    add_reference :bookmarks, :bookmark_types, index: true
  end
end
