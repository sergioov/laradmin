Course.create!([
  {name: "Amor Matrimonial", description: "Primer curso", order: 1},
  {name: "Amor matrimonial 2", description: "", order: nil}
])
Enrollment.create!([
  {programed_course_id: 1, student_id: 1}
])
Person.create!([
  {first_name: "Sergio", last_name: "Orozco", second_last_name: "Villarreal", phone: "", email: "", address: "", teacher: true, second_names: "", birth_date: "1985-01-20", aniversary: nil}
])
ProgramedCourse.create!([
  {course_id: 1, details: "Primera generación", start_date: "2016-07-01", supervisor_id: 1}
])
ProgramedCourseSession.create!([
  {programed_course_id: 1, session_number: 1, topic: "Primera sesion", date: "2016-07-24", teacher_id: 1}
])
User.create!([
  {email: "sergioov@hotmail.com", encrypted_password: "$2a$11$.z3AJZRQmN0NCgnaa0e/Z.7/iYwjmuf0ZpW728E/1jTssud4nEvX.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-07-24 01:02:23", last_sign_in_at: "2016-07-24 01:02:23", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true}
])
