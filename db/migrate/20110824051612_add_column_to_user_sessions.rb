class AddColumnToUserSessions < ActiveRecord::Migration
  def self.up
    add_column :user_sessions, :roll, :string
  end

  def self.down
    remove_column :user_sessions, :roll
  end
end
