class CreateOnairs < ActiveRecord::Migration
  def change
    create_table :onairs do |t|
      
      t.string :title
      t.string :date_day
      t.string :date_time_start
      t.string :date_time_end
      t.string :img1
      t.string :img2
      t.string :action_type
      t.text   :content_detail
      t.integer :how_many_read
      t.string  :who_name
      t.string  :who_status
      t.string  :who_did
      t.integer :password
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
