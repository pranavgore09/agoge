json.extract! @user, :id, :useremployeeid, :username, :email

json.topics @user.topics do |topic|
  json.name topic.name
  json.description topic.description
  json.priority topic.priority_by_user(@user.id)
  json.attended topic.present_by_user(@user.id)
  json.created_at topic.created_at_by_user(@user.id)
end
