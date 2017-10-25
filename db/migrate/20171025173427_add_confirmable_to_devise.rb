class AddConfirmableToDevise < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string
    add_index :users, :confirmation_token, unique: true
    User.all.update_all confirmed_at: DateTime.now

    add_column :chefs, :confirmation_token, :string
    add_column :chefs, :confirmed_at, :datetime
    add_column :chefs, :confirmation_sent_at, :datetime
    add_column :chefs, :unconfirmed_email, :string
    add_index :chefs, :confirmation_token, unique: true
    Chef.all.update_all confirmed_at: DateTime.now
  end

  def down
    remove_columns :users, :confirmation_token, :confirmed_at, :confirmation_sent_at
    remove_columns :chefs, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end
end
