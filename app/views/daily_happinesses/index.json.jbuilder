json.array!(@daily_happinesses) do |daily_happiness|
  json.extract! daily_happiness, :id, :time, :happiness_score
  json.url daily_happiness_url(daily_happiness, format: :json)
end
