insert actor (fname, stageName, lname, gender, dob) values
	("Keanu", "", "Reeves", "Male", "1964-09-02"),
    ("Tommy", "", "Wiseau", "Male", "1955-11-03"),
    ("Chris", "", "Pratt", "Male", "1979-06-21"),
    ("Zachary", "", "Levi", "Male", "1980-09-29"),
    ("Karen", "", "Gillan", "Female", "1987-11-28");
    
insert movie (title, rating, year, director) value
	("Guardians of the Galaxy Vol. 2", "PG-13", 2017, "James Gunn"),
    ("Best F(r)iends: Volume 1", "R", 2017, "Justin MacGregor"),
    ("She Loves me", "NR", 2016, "David Horn"),
    ("John Wick: Chapter 3 - Parabellum", "R", 2019, "Chad Stahelski");
    
insert credit (movieID, actorID, role) values
	(1, 3, "Starlord/Peter Quill"),
    (1, 5, "Nebula"),
    (2, 2, "Harvey Lewis"),
    (3, 4, "George"),
    (4, 1, "John Wick");
    
insert movieGenre (movieID, genreID) values
	(1, 1),
    (1, 2),
    (1, 3),
    (2, 3),
    (2, 5),
    (2, 21),
    (3, 11),
    (3, 3),
    (3, 16),
    (4, 1),
    (4, 22);
