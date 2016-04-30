class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.integer :micropost_id

      t.timestamps null: false
    end
  end
end
