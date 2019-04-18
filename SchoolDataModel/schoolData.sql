drop database if exists schoolData;
create database schoolData;
use schoolData;

create table student (
	ID int primary key auto_increment,
    fName nvarchar(25) not null,
    lname nvarchar(25) not null,
    street nvarchar(25) not null,
    city nvarchar(25) not null,
    state nvarchar(25) not null,
    zip nvarchar(5) not null,
    dob date,
    phone nvarchar(25) not null,
    email nvarchar(25) not null
);

create table course (
	ID int primary key auto_increment,
    number nvarchar(25) unique not null,
    subject nvarchar(25) not null,
    name nvarchar(25) not null
);

create table instructor (
	ID int primary key auto_increment,
    courseNumber int not null,
    foreign key (courseNumber) references course (ID),
    fname nvarchar(25) not null,
    lname nvarchar(25) not null
);

create table enrollment (
	ID int primary key auto_increment,
    studentID int not null,
    courseID int not null,
    grade dec(5,2),
    foreign key (studentID) references student (ID),
    foreign key (courseID) references course (ID)
);

insert student (ID, fname, lname, street, city, state, zip, dob, phone, email) values 
(132435, 'Joe', 'Student', '1234 Main St', 'Townsville', 'OH', '12345', '1994-03-23', '(513)555-5555', 'student.joe@school.edu'),
(948573, 'Jane', 'Student', '1234 Main St', 'Townsville', 'OH', '12345', '1994-04-24', '(513)555-5555', 'student.jane@school.edu'),
(839575, 'John', 'Wick', '1337 Tower St', 'Tilted', 'AZ', '41234', '1993-07-15', '(418)235-9015', 'wick.john@school.edu'),
(780435, 'Jenny', 'Jenny', '5634 Bathroom St', 'Truckstopolis', 'NJ', '18925', '1993-012-07', '(498)867-5309', 'jenny.jenny@school.edu'),
(978654, 'Chase', 'Williams', '3178 Carlton St', 'Cincinnati', 'OH', '45227', '1998-11-19', '(513)498-8547', 'williams.chase@school.edu');

insert course (ID, number, subject, name) values
(465, 'ah603','History','American History 603'),
(602, 'ds101','Computer Science', 'Data Structures 101'),
(717, 'mt702','Music','Music Theory 702');

insert instructor (courseNumber, fname, lname) values
(602, 'Bruce', 'Miller'),
(717, 'Mary-Beth', 'Khamis'),
(465, 'Vanags', 'Erik');

 insert enrollment (studentID, courseID, grade) values
 (839575, 602, 89.34),
 (978654, 602, 99.99),
 (948573, 465, 85.25),
 (978654, 717, 100.00),
 (780435, 465, 76.11);
 
 CREATE USER sdb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON sdb.* TO sdb_user@localhost;