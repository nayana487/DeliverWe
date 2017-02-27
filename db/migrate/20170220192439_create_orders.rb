class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :note, limit: 50
      t.string :time
      t.belongs_to :restaurant
    end
  end
end
