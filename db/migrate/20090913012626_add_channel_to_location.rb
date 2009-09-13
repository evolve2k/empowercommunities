class AddChannelToLocation < ActiveRecord::Migration
  def self.up
    add_column :locations, :channel_id, :integer

  end

  def self.down
    add_column :locations, :channel_id
  end
end
