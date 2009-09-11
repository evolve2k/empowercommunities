class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
	  t.string :address
	  t.string :suburb
	  t.string :state
	  t.string :post_code
	  t.string :country
      t.string :primary_contact
      t.string :position
      t.string :contact_number
      t.string :website
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
