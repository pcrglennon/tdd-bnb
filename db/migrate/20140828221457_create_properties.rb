class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :city

      t.timestamps
    end
  end
end
