class CreateTopicUsers < ActiveRecord::Migration
  def up
    create_table :topic_users do |t|
      t.references :topic
      t.references :user
      t.string :priority, default: 'normal'
      t.boolean :present, default: false

      t.timestamps
    end
  end

  def down
    drop_table :topic_users
  end
end
