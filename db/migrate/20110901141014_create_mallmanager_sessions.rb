class CreateMallmanagerSessions < ActiveRecord::Migration
  def self.up
    create_table :mallmanager_sessions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :mallmanager_sessions
  end
end
