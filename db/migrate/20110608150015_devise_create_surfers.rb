class DeviseCreateSurfers < ActiveRecord::Migration
  def self.up
    change_table(:surfers) do |t|
 #    t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable

      t.string :encrypted_password, :null => false, :default => '', :limit => 128  
    end

    add_index :surfers, :email,                :unique => true
    add_index :surfers, :reset_password_token, :unique => true
    # add_index :surfers, :confirmation_token,   :unique => true
    # add_index :surfers, :unlock_token,         :unique => true
    # add_index :surfers, :authentication_token, :unique => true
  end

  def self.down
    drop_table :surfers
  end
end
