json.array!(@programed_course_sessions) do |programed_course_session|
  json.extract! programed_course_session, :id, :programed_course_id, :session_number, :topic, :date
  json.url programed_course_session_url(programed_course_session, format: :json)
end
