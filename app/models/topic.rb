class Topic < ActiveRecord::Base
  has_many :topic_users
  has_many :users, through: :topic_users

  %w(priority present created_at).each do |name|
    define_method "#{name}_by_user" do |user_id|
      topic_user = TopicUser.find_by(topic_id: id, user_id: user_id)
      topic_user ? topic_user.send(name) : false
    end
  end
end
