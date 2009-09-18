class RemoveStateFromLocation < ActiveRecord::Migration
  def self.up
    remove_column :locations, :state
  end

  def self.down
    add_column :locations, :state, :string
  end
end
