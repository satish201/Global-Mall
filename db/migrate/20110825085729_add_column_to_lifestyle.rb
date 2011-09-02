class AddColumnToLifestyle < ActiveRecord::Migration
  def self.up
    add_column :lifestyles, :product_id, :integer
  end

  def self.down
    remove_column :lifestyles, :product_id
  end
end
