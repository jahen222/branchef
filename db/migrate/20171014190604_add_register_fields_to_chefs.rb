class AddRegisterFieldsToChefs < ActiveRecord::Migration[5.0]
  def change
    add_column :chefs, :name, :string
    add_column :chefs, :last_name, :string
    add_column :chefs, :is_female, :boolean, default: false
    add_column :chefs, :phone, :string
    add_column :chefs, :address, :string
    add_column :chefs, :zip_code, :integer
    add_column :chefs, :date_of_birth, :datetime
    add_column :chefs, :summary, :text
    add_column :chefs, :is_branchef, :boolean, default: false
  end
  # Add images of chefs
  add_attachment :chefs, :image1
  add_attachment :chefs, :image2
  add_attachment :chefs, :image3
  add_attachment :chefs, :image4
  add_attachment :chefs, :image5
  add_attachment :chefs, :image6
  add_attachment :chefs, :image7
  add_attachment :chefs, :image8
  add_attachment :chefs, :image9
  add_attachment :chefs, :image10
end
