class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :code
      t.integer :product_type_id
      t.date :first_production
      t.date :ceased_production

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
