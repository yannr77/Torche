class AddEmailToSurfer < ActiveRecord::Migration
  def self.up
    add_column :surfers, :email, :string
  end

  def self.down
    remove_column :surfers, :email
  end
end