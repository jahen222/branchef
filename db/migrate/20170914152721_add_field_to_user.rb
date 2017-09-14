class AddFieldToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :text
    add_column :users, :lastname, :text
    add_column :users, :country, :text
    add_column :users, :city, :text
    add_column :users, :summary, :text
  end
end
