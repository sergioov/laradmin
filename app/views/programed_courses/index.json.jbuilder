json.array!(@programed_courses) do |programed_course|
  json.extract! programed_course, :id
  json.url programed_course_url(programed_course, format: :json)
end
