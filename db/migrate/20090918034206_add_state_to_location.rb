class AddStateToLocation < ActiveRecord::Migration
  def self.up
    add_column :locations, :state_id, :integer
  end

  def self.down
    remove_column :locations, :state_id
  end
end
