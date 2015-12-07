class AddPropsToBookmark < ActiveRecord::Migration
  def change
    add_column :bookmarks, :url_origin, :string
    add_column :bookmarks, :origin_title, :string
    add_column :bookmarks, :image_url, :string
  end
end
