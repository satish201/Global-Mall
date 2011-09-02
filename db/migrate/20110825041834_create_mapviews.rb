class CreateMapviews < ActiveRecord::Migration
  def self.up
    create_table :mapviews do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :mapviews
  end
end
