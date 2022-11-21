class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :hobbies, null: false, default: ""
      t.integer :price, null: false
      t.string :zodiac_sign, null: false, default: ""
      t.string :pronouns, null: false, default: ""
      t.text :about_me, null: false
      t.string :availability, null: false, default: ""
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
