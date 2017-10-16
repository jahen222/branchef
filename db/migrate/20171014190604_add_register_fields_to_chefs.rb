class AddRegisterFieldsToChefs < ActiveRecord::Migration[5.0]
  def change
    add_column :chefs, :name, :string
    add_column :chefs, :last_name, :string
    add_column :chefs, :is_female, :boolean, default: false
    add_column :chefs, :phone, :string
    add_column :chefs, :address, :string
    add_column :chefs, :zip_code, :integer
    add_column :chefs, :date_of_birth, :datetime
    add_column :chefs, :link_blog, :string
    add_column :chefs, :link_instagram, :string
    add_column :chefs, :link_facebook, :string
    add_column :chefs, :link_linkedin, :string
    add_column :chefs, :summary, :text
    add_column :chefs, :is_branchef, :boolean, default: false
  end
end
