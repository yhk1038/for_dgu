class CreateOnairReplies < ActiveRecord::Migration
  def change
    create_table :onair_replies do |t|
      
      t.integer :onair_id
      t.string  :name
      t.string  :password
      t.text    :content

      t.timestamps null: false
    end
  end
end
