class ChangeLocations < ActiveRecord::Migration[5.0]
  def up
    change_table :locations do |t|
      t.remove :address, :country
      t.string :weather
    end
  end

  def down
    change_table :locations do |t|
      t.string :address
      t.string :country
      t.remove :weather
    end
  end
  
end
