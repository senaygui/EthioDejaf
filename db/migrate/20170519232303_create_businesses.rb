class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.references :user, index: true, foreign_key: true
      t.string :business_name, null: false
      t.string :business_address, null: false
      t.string :business_catagory, null: false
      t.string :mobile_number
      t.string :business_email
      t.text   :business_description, null: false
      t.string :business_photo
      t.timestamps
    end
  end
end
