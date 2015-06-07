json.array!(@comparisons) do |comparison|
  json.extract! comparison, :id, :winning_habit_id, :habit_id_1, :habit_id_2
  json.url comparison_url(comparison, format: :json)
end
