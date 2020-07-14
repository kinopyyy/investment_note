class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :item_name,                   null:false
      t.string :price,                       null:false
      t.string :type,                        null:false
      t.timestamps
    end
  end
end
