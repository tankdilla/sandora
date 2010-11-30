class CreateQuantityTypes < ActiveRecord::Migration
  def self.up
    create_table :quantity_types do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :quantity_types
  end
end
