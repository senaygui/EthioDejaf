class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.references :user, index: true, foreign_key: true
      t.references :business, index: true, foreign_key: true
      t.string :event_name
      t.string :event_description
      t.string :event_photo
      t.datetime :starting_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
