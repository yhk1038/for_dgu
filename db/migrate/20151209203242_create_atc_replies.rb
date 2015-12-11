class CreateAtcReplies < ActiveRecord::Migration
  def change
    create_table :atc_replies do |t|
      
      t.integer :atc_id
      t.string  :name
      t.string  :password
      t.text    :content

      t.timestamps null: false
    end
  end
end
