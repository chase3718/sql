DROP DATABASE IF EXISTS stuffy;
CREATE DATABASE stuffy;
USE stuffy;

create table stuffy (
	ID			INT            	PRIMARY KEY  AUTO_INCREMENT,
	Type        VARCHAR(10)    	NOT NULL,
    Color		VARCHAR(10)		NOT NULL,
	Size		VARCHAR(255)  	NOT NULL,
	Limbs		INT				NOT NULL
);

INSERT INTO stuffy VALUES (1, "Dog", "Red", "Large", 4);
INSERT INTO stuffy VALUES (2, "Cat", "Green", "Small", 4);
INSERT INTO stuffy VALUES (3, "Dragon", "Purple", "Medium", 6);
INSERT INTO stuffy VALUES (4, "Snail", "Yellow", "X-Large", 0);
INSERT INTO stuffy VALUES (5, "Platypus", "Blue", "Medium", 4);
INSERT INTO stuffy VALUES (6, "Octupus", "Purple", "Large", 8);
INSERT INTO stuffy VALUES (7, "Squirrel", "Brown", "Small", 4);
INSERT INTO stuffy VALUES (8, "StarFish", "Pink", "X-Large", 5);
INSERT INTO stuffy VALUES (9, "Lobster", "Red", "Large", 10);
INSERT INTO stuffy VALUES (10, "Spider", "Clear", "Small", 8);

CREATE USER stuffy_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON stuffy.* TO stuffy_user@localhost;