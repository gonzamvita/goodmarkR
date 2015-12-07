class CreateBookmarkTypes < ActiveRecord::Migration
  def change
    create_table :bookmark_types do |t|
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
