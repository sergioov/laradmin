Course.create!([
  {name: "Amor matrimonial", description: "El primer curso de matrimonio", order: 2},
  {name: "amor matrimonial 2", description: "segunda parte", order: 3},
  {name: "Proyecto personal", description: "Curso para jovenes", order: 1}
])
Enrollment.create!([
  {programed_course_id: 12, student_id: 1},
  {programed_course_id: 14, student_id: 2},
  {programed_course_id: 12, student_id: 2},
  {programed_course_id: 14, student_id: 3},
  {programed_course_id: 12, student_id: 3},
  {programed_course_id: 16, student_id: 1},
  {programed_course_id: 16, student_id: 2},
  {programed_course_id: nil, student_id: nil},
  {programed_course_id: 15, student_id: 1},
  {programed_course_id: 15, student_id: 2}
])
Person.create!([
  {first_name: "Sergio", last_name: "Orozco", second_last_name: "Villarreal", phone: "4422797957", email: "sergioov@gmail.com", address: "qrtyu dfghj", teacher: true, second_names: "", birth_date: "1985-01-20"},
  {first_name: "Mariana", last_name: "Ramirez", second_last_name: "Orozco", phone: "4421560472", email: "mai.ramirez.o@gmail.com", address: "hggksaljd jsd", teacher: true, second_names: "", birth_date: nil},
  {first_name: "Mario", last_name: "ramirez", second_last_name: "soto", phone: "456789", email: "mail@mairio.com", address: "lksad lsajd a", teacher: true, second_names: "alberto", birth_date: "2016-12-31"}
])
ProgramedCourse.create!([
  {course_id: 1, details: "generacion 3", start_date: "2016-05-30", supervisor_id: 3},
  {course_id: 2, details: "primer curso de amor 2 ", start_date: "2016-12-29", supervisor_id: 1},
  {course_id: 1, details: "generacion 2", start_date: "2016-01-27", supervisor_id: 1},
  {course_id: 3, details: "primera genercoon", start_date: "2016-07-01", supervisor_id: 1},
  {course_id: 1, details: "generacion 1", start_date: "2015-05-01", supervisor_id: 1}
])
ProgramedCourseSession.create!([
  {programed_course_id: 12, session_number: 1, topic: "Program de course session 1", date: "2016-06-10", teacher_id: 1},
  {programed_course_id: 15, session_number: 1, topic: "primera session", date: "2016-06-10", teacher_id: 1},
  {programed_course_id: 12, session_number: 2, topic: "Segunda session", date: "2016-06-10", teacher_id: 1},
  {programed_course_id: 16, session_number: 2, topic: "segunda session", date: "2016-06-10", teacher_id: 1},
  {programed_course_id: 14, session_number: 1, topic: "primera session", date: "2016-06-13", teacher_id: 1}
])
