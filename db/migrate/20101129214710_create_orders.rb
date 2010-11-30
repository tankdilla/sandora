class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :name
      t.string :phone_number
      t.string :alt_phone_number
      t.string :email
      t.string :recipient_name
      t.string :recipient_phone_number
      t.boolean :gift_ind
      t.string :gift_message

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
