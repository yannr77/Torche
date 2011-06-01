class CreateBoardSurfers < ActiveRecord::Migration
  def self.up
    create_table :board_surfers do |t|
      t.integer :surfer_id
      t.integer :board_id

      t.timestamps
    end
  end

  def self.down
    drop_table :board_surfers
  end
end
