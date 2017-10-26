class CreateJoinTableChefSpecialty < ActiveRecord::Migration[5.0]
  def change
    create_join_table :chefs, :specialties do |t|
      # t.index [:chef_id, :specialty_id]
      # t.index [:specialty_id, :chef_id]
    end
  end
end
