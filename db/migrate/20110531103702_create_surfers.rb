class CreateSurfers < ActiveRecord::Migration
  def self.up
    create_table :surfers do |t|
      t.string :firstname
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :surfers
  end
end
