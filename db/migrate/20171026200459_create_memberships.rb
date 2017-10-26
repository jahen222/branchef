class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.string :name
      t.text :description
      t.integer :specialty_max

      t.timestamps
    end
  end
end
