class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :name

      t.timestamps
    end
    
    ["debutant", "moyen", "confirme"].each do |name| 
      State.create(:name => name)
    end

  end

  def self.down
    drop_table :states
  end
end
