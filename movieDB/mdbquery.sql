select * from actor, movie, credit, movieGenre;

select a.fName as FirstName, a.stageName as StageName, a.gender as Gender, a.dob as DateOfBirth, c.role as Role, m.title as MovieTitle, m.rating as Rating, m.year as ReleaseYear, m.director as Director -- , gen.name
	from actor a join credit c on a.id = c.actorid join movie m on m.id = c.movieid; -- join movieGenre g on g.movieid = m.id join genre gen on g.genreID = gen.id;

, credit, movieGenre;