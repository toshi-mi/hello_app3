class CreateFavs < ActiveRecord::Migration
  def change
    create_table :favs do |t|
      t.integer :micropost_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
