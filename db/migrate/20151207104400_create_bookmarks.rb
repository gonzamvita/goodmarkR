class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.references :user, index: true

      t.string :title, null: false
      t.string :content, null: false
      t.timestamps null: false
    end
  end
end
