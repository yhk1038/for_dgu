class CreateFimsgs < ActiveRecord::Migration
  def change
    create_table :fimsgs do |t|
      
      t.string  :name
      t.text    :content
      t.integer :password

      t.timestamps null: false
    end
  end
end
