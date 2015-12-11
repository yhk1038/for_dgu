class CreateCounttotals < ActiveRecord::Migration
  def change
    create_table :counttotals do |t|
      
      t.integer :count_tatal

      t.timestamps null: false
    end
  end
end
