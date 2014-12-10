class RemovePriorityFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :priority, :string
  end
end
