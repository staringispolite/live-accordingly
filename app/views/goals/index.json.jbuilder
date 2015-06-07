json.array!(@goals) do |goal|
  json.extract! goal, :id, :name, :meaning, :progress_percent, :is_active
  json.url goal_url(goal, format: :json)
end
