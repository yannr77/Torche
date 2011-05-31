class AddTelToSurfer < ActiveRecord::Migration
  def self.up
     add_column :surfers, :tel, :string
   end

   def self.down
     remove_column :surfers, :tel
   end
end
