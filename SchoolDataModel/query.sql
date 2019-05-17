select * from student join course join instructor;
select * from student, course, instructor, enrollment;
select * from student right join enrollment on student.id = enrollment.studentID inner join course on course.id = enrollment.courseID;
select * from enrollment;
select concat(s.lname, ", ", s.fname) as StudentName, concat(s.street, ", ", s.city, ", ", s.state, " ", s.zip) as Address, s.phone as PhoneNumber, s.email as Email, c.name as ClassName, concat(i.lname, ", ", i.fname) as InstructorName, c.number as CourseNumber, e.grade as StudentGrade 
	from student s inner join enrollment e on s.ID = e.studentId inner join course c on c.ID = e.courseID inner join instructor i on i.courseNumber = c.ID;
