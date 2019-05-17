drop database if exists music;
create database music;
use music;

create table artist (
	ID 			int			primary key			auto_increment,
    name		varchar(25) not null			unique
);

create table album (
	id			int			primary key			auto_increment,
    name		varchar(25)	not null,
    artistID	int 		not null,
    foreign key (artistID) references artist(ID)
);

insert into artist (name) values
('Elvis Presley'),
('John Prine'),
('The Beatles');

insert into album (name, artistID) values
('Elvis 30 #1 Hits', 0),
('Elvis at Sun', 0),
('John Prine', 1),
('Revolver', 2),
('Rubber Soul', 2),
('Sgt. Pepper''s Lonely Hearts Club Band', 2),
('Sweet Revenge', 1),
('The White Album', 2);

CREATE USER music_user@localhost IDENTIFIED BY 'windows';
GRANT SELECT, INSERT, DELETE, UPDATE ON music.* TO music_user@localhost;