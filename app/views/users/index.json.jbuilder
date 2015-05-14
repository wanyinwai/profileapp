json.array!(@users) do |user|
  json.extract! user, :id, :userID, :username, :createDate, :expiryDate
  json.url user_url(user, format: :json)
end
