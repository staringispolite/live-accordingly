json.array!(@habits) do |habit|
  json.extract! habit, :id, :category_id, :name, :description, :weekly_frequency
  json.url habit_url(habit, format: :json)
end
