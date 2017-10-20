class AddFilesToChef < ActiveRecord::Migration[5.0]
  def change
  end
  add_attachment :chefs, :cv
end
