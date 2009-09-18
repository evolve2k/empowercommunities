class CreateAreaProducts < ActiveRecord::Migration
  def self.up
    create_table :area_products do |t|
      t.integer :product_id
      t.string :shape
      t.float :width
      t.float :length
      t.float :area
      t.float :perimeter

      t.timestamps
    end
  end

  def self.down
    drop_table :area_products
  end
end
