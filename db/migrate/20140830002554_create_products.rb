class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :price, :precision =>8, :scale=>2
      t.string :category
      t.decimal :discount

      t.timestamps
    end
  end
  
  def self.down
  	drop_table :products
	end
end
