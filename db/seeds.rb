# Seed data for Users

User.delete_all
1.upto(50).each do |num|
  User.create! do |user|
    user.useremployeeid = "V#{num}"
    user.username = "User #{num}"
    user.email = "user#{num}@abc.com"
    user.uid = "user_#{num}"
  end
end

# topic priority
PRIORITY = %w(urgent normal low)

Topic.delete_all
1.upto(20).each do |num|
  Topic.create! do |topic|
    topic.name = "Topic #{num}"
    topic.priority = PRIORITY[num % 3]
  end
end
