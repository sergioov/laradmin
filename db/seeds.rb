Course.create!([
  {name: "Amor matrimonial", description: "Primer curso de amor matrimonial", order: 1}
])
Enrollment.create!([
  {programed_course_id: 1, student_id: 2}
])
Person.create!([
  {first_name: "Sergio", last_name: "Orozco", second_last_name: "Villarreal", phone: "4422797957", email: "sergioov@hotmail.com", address: "El mirador", teacher: true, second_names: "", birth_date: "1985-01-20", aniversary: nil},
  {first_name: "Primer alumno", last_name: "alumno", second_last_name: "alumno", phone: "1234567", email: "primeralumno@laradmin.com", address: "", teacher: false, second_names: "", birth_date: "2016-12-31", aniversary: nil}
])
ProgramedCourse.create!([
  {course_id: 1, details: "Primera generacion", start_date: "2016-07-11", supervisor_id: 1}
])
ProgramedCourseSession.create!([
  {programed_course_id: 1, session_number: 1, topic: "Primera session", date: "2016-07-14", teacher_id: 1}
])
User.create!([
  {email: "sergioov@hotmail.com", encrypted_password: "$2a$11$Qj/XiC8fBRycC3.Tb648GeG0U.uQy9UGlGCOU9lBuqL.h2xxOI5pO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 6, current_sign_in_at: "2016-07-18 04:23:19", last_sign_in_at: "2016-07-18 04:21:12", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true}
])
