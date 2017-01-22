json.array! @anatomy_users.each do |anatomy_user|
  json.id anatomy_user.id
  json.anatomy_id anatomy_user.anatomy_id
  json.user_id anatomy_user.user_id
end