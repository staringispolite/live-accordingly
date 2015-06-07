json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :habit_id, :time, :happiness_score
  json.url checkin_url(checkin, format: :json)
end
