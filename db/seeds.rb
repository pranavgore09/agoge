# Seed data for Users

User.delete_all
1.upto(50).each do |num|
  User.create! do |user|
    user.useremployeeid = "V#{num}"
    user.username = "User #{num}"
    user.password = "user#{num}@agoge"
    user.email = "user#{num}@abc.com"
    user.uid = "user_#{num}"
  end
end

# topic priority
Topic.delete_all
1.upto(20).each do |num|
  Topic.create! do |topic|
    topic.name = "Topic #{num}"
    topic.description = "This is description of Topic #{num}"
  end
end
