class CreateScdlReplies < ActiveRecord::Migration
  def change
    create_table :scdl_replies do |t|
      
      t.integer :scdl_id
      t.string  :name
      t.string  :password
      t.text    :content

      t.timestamps null: false
    end
  end
end
