class RenamePropertiesToHomes < ActiveRecord::Migration
  def change
    rename_table :properties, :homes
  end
end
