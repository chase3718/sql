drop database if exists movieDB;
create database movieDB;
use movieDB;

create table actor (
	ID int primary key auto_increment,
    fName varchar(25),
	stageName varchar(25),
    lName varchar(25),
    gender varchar(6),
    dob date
);

create table movie (
	ID int primary key auto_increment,
    title varchar(100) not null,
    rating varchar(5) not null,
    year int,
    director varchar(50)
);

create table genre (
	ID int primary key auto_increment,
    name varchar(20) not null
);

create table credit (
	ID int primary key auto_increment,
    movieID int not null,
    actorID int not null,
    role varchar(25) not null,
    foreign key (movieID) references movie(ID),
    foreign key (actorID) references actor(ID),
    constraint act_mov unique (movieID, actorID)
);

create table movieGenre (
	ID int primary key auto_increment,
    movieID int not null,
    genreID int not null,
    foreign key (movieID) references movie(ID),
    foreign key (genreID) references genre(ID)
);

insert genre (name) values
	('Adventure'),
	('Comedy'),
	('Crime'),
	('Drama'),
	('Fantasy'),
	('Historical'),
	('Historical fiction'),
	('Horror'),
	('Magical realism'),
	('Mystery'),
	('Paranoid Fiction'),
	('Philosophical'),
	('Political'),
	('Romance'),
	('Saga'),
	('Satire'),
	('Science fiction'),
	('Social'),
	('Speculative'),
	('Thriller'),
	('Urban'),
	('Western');