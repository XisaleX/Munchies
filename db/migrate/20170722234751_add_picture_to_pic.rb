class AddPictureToPic < ActiveRecord::Migration[5.0]
  def change
    add_column :pics, :picture, :string
  end
end
