class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.string :name
      t.integer :months
      t.integer :services
      t.integer :clients_max
      t.integer :base_discount
      t.integer :dish_discount
      t.integer :dishes_max
      t.integer :no_dishes_max
      t.float :price

      t.timestamps
    end
  end
end
