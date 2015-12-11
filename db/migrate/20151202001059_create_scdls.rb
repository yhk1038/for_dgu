class CreateScdls < ActiveRecord::Migration
  def change
    create_table :scdls do |t|
      
      t.string :title
      t.string :date_day
      t.string :date_time_start
      t.string :date_time_end
      t.string :img1
      t.string :img2
      t.string :action_type
      t.text :content_detail
      t.integer :how_many_read
      t.integer :how_many_with # 0(scdl) / 모집 : 1(주간지킴이) 2(야간지킴이) 3(아침피켓팅) 4(점심피켓팅) / 재능 : 11(재능1) 12(재능2) 13(재능3) 14(재능4)
      t.integer :password
      t.integer :user_id
      

      t.timestamps null: false
    end
  end
end
