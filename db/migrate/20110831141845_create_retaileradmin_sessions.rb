class CreateRetaileradminSessions < ActiveRecord::Migration
  def self.up
    create_table :retaileradmin_sessions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :retailer_sessions
  end
end
