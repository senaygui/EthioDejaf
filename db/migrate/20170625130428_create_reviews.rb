class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :business, index: true, foreign_key: true
      t.integer :ratting
      t.text :comment
      t.timestamps
    end
  end
end
