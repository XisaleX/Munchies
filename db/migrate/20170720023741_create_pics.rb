class CreatePics < ActiveRecord::Migration[5.0]
  def change
    create_table :pics do |t|
      
      t.text :caption
      t.integer :place_id
      t.timestamps
    end
  end
end
