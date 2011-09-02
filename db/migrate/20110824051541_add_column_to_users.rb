class AddColumnToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :roll, :string
  end

  def self.down
    remove_column :users, :roll
  end
end
