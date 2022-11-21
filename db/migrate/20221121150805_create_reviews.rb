class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :comment, null: false
      t.integer :rating, null: false
      t.references :user, null: false
      t.references :friend, null: false

      t.timestamps
    end
  end
end
