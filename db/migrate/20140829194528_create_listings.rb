class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.date :start_date
      t.date :end_date
      t.references :home, index: true

      t.timestamps
    end
  end
end
