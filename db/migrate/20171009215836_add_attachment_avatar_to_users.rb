class AddAttachmentAvatarToUsers < ActiveRecord::Migration[5.0]
  def self.up
    change_table :users do |t|
      t.attachment :avatar
    end

    change_table :chefs do |t|
      t.attachment :avatar
    end

    change_table :admins do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :users, :avatar
    remove_attachment :chefs, :avatar
    remove_attachment :admins, :avatar
  end
end
