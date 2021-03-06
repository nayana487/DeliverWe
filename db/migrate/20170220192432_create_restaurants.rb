class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :logo_url
      t.string :menu_link
      t.float :delivery_fee
      t.float :delivery_min
      t.float :tax
    end
  end
end
