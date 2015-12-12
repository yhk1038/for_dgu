class CreateOnairs < ActiveRecord::Migration
  def change
    create_table :onairs do |t|
      
      t.string  :who_name
      t.string  :who_status
      t.string  :who_did
      t.integer :password
      
      t.string  :make_date
      t.string  :date_time_start
      t.string  :date_time_end
      t.string  :date_time_start2
      t.string  :date_time_end2
      t.string  :type
      t.integer :how_many_read
      
      t.string :title
      t.string :sub_title1
      t.string :sub_title2
      t.string :sub_title3
      t.string :sub_title4
      t.string :sub_title5
      
      t.text   :content1
      t.text   :content2
      t.text   :content3
      t.text   :content4
      t.text   :content5
      
      t.string :img1
      t.string :img2
      t.string :img3
      t.string :img4
      t.string :img5
      t.string :img6
      t.string :img7
      t.string :img8
      t.string :img9
      t.string :img10
      
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
