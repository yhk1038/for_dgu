class CreateCountdailies < ActiveRecord::Migration
  def change
    create_table :countdailies do |t|
      
      t.string  :today
      t.integer :aday

      t.timestamps null: false
    end
  end
end
