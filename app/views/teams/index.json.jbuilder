json.array!(@teams) do |team|
  json.extract! team, :id, :programed_course_session_id, :person_id
  json.url team_url(team, format: :json)
end
