class CreateUsers < ActiveRecord::Migration
  def up
    create_table(:users, primary_key: :userid) do |t|
      t.string :useremployeeid, limit: 6, default: nil
      t.string :username,       limit: 40, default: nil
      t.string :email,          null: false, default: ''
      # Don't delete. Used for ldap
      t.string :uid,            limit: 50, default: nil

      t.timestamps
    end
    change_column :users, :userid, :integer, limit: 11, auto_increment: true
  end

  def down
    drop_table :users
  end
end
