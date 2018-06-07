class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :image_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
