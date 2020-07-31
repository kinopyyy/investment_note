class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :item,                   null:false
      t.integer :price,                  null:false
      t.text :category,                 null:false
      t.text :note                
      t.date :day,                      null:false
      t.timestamps
    end
  end
end
