json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :student_id, :programed_course_id
  json.url enrollment_url(enrollment, format: :json)
end
