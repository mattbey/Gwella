class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.text :city
      t.text :state
      t.text :country
      t.text :interests
      t.integer :user_id

      t.timestamps

    end
  end
end
