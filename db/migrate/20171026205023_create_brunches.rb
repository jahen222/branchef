class CreateBrunches < ActiveRecord::Migration[5.0]
  def change
    create_table :brunches do |t|
      t.boolean :entrance
      t.float :entrance_value
      t.boolean :main_course
      t.float :main_course_value
      t.boolean :dessert
      t.float :dessert_value
      t.boolean :drink
      t.float :drink_value

      t.timestamps
    end
  end
end
