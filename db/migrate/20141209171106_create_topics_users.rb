class CreateTopicsUsers < ActiveRecord::Migration
  def up
    create_table :topics_users do |t|
      t.string :priority
      t.references :topic
      t.references :user
    end
  end

  def down
    drop_table :topics_users
  end
end
