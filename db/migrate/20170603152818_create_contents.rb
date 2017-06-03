class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.integer :video_id
      t.string :url

      t.timestamps

    end
  end
end
