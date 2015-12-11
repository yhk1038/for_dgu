class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      
      t.text :title
      t.text :subtitle
      t.text :link
      t.string :org
      t.string :img1
      t.string :img2
      t.string :date_day
      t.integer :password
      t.integer :like_it

      t.timestamps null: false
    end
  end
end
