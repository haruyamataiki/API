class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.text "shop_name"
      t.string "image_id"
      t.text "caption"
      t.timestamps
    end
  end
end
