class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :photo_url
      t.string :category_id

      t.timestamps
    end
  end
end
