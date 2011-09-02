class CreateLifestyles < ActiveRecord::Migration
  def self.up
    create_table :lifestyles do |t|
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :lifestyles
  end
end
