class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
	  t.references :user, index: true, foreign_key: true
      t.string :username, :null => false
      t.string :sex
      t.text :bio, :limit => 140
      t.integer :age
      t.string :avatar
      t.timestamps
    end
  end
end

