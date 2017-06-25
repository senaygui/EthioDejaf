class CreateVaccancies < ActiveRecord::Migration[5.0]
  def change
    create_table :vaccancies do |t|
      t.references :user, index: true, foreign_key: true
      t.references :business, index: true, foreign_key: true
      t.string     :vaccancy_description, limit: 200, null: false
      t.string     :number_of_people
      t.string     :availability_status
      t.integer     :salary
      t.datetime   :come_in_date, null: false
      t.string     :vaccancy_photo

      t.timestamps
    end
  end
end
