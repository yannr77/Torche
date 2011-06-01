class AddStateToSurfers < ActiveRecord::Migration
  def self.up
    add_column :surfers, :state_id, :integer
  end

  def self.down
    remove_column :surfers, :state_id
  end
end