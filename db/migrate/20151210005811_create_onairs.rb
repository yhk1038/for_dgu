class CreateOnairs < ActiveRecord::Migration
  def change
    create_table :onairs do |t|
      
      t.string  :name
      t.string  :your_title
      t.string  :to_others
      t.integer :password
      t.string  :name_eng      #name_eng
      t.string  :phone         #phone
      t.string  :email         #email
      t.text    :profile_img   #profile_img
      t.text    :about_you     #about_you
      t.text    :details       #details
      t.text    :main_img      #main_img
      t.string  :main_title
      
      t.string  :make_date
      
      t.string  :date_time_start
      t.string  :date_time_end
      t.string  :date_time_start2
      t.string  :date_time_end2
      t.string  :typee
      t.integer :how_many_read
      
      t.string :title
      t.string :title2
      t.string :title3
      t.string :title4
      t.string :title5
      
      t.string :subtitle1
      t.string :subtitle2
      t.string :subtitle3
      t.string :subtitle4
      t.string :subtitle5
      t.string :subtitle6
      t.string :subtitle7
      t.string :subtitle8
      t.string :subtitle9
      t.string :subtitle10
      t.string :subtitle11
      t.string :subtitle12
      t.string :subtitle13
      t.string :subtitle14
      t.string :subtitle15
      t.string :subtitle16
      t.string :subtitle17
      t.string :subtitle18
      t.string :subtitle19
      t.string :subtitle20
      
      t.text   :content1
      t.text   :content2
      t.text   :content3
      t.text   :content4
      t.text   :content5
      t.text   :content6
      t.text   :content7
      t.text   :content8
      t.text   :content9
      t.text   :content10
      t.text   :content11
      t.text   :content12
      t.text   :content13
      t.text   :content14
      t.text   :content15
      t.text   :content16
      t.text   :content17
      t.text   :content18
      t.text   :content19
      t.text   :content20
      
      t.text :img1
      t.text :img2
      t.text :img3
      t.text :img4
      t.text :img5
      t.text :img6
      t.text :img7
      t.text :img8
      t.text :img9
      t.text :img10
      
      
      t.integer :ect_integer1
      t.integer :ect_integer2
      t.integer :ect_integer3
      
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
