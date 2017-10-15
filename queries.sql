/* names of all the actors in the movie 'Death to Smoochy' */
SELECT CONCAT (first, ' ', last)
FROM Actor, MovieActor, Movie 
WHERE Movie.title = 'Death to Smoochy'
AND Movie.id = MovieActor.mid 
AND MovieActor.aid = Actor.id;

/* count of all the directors who directed at least 4 movies */
SELECT COUNT(did)
FROM (SELECT did, COUNT(mid) as movs
FROM MovieDirector GROUP BY MovieDirector.did) as alldirs
WHERE alldirs.movs > 3;

/* display the name of all the movies in a table */
SELECT Movie.title
FROM Movie;

/* display the full names of all the directors in a table */
SELECT CONCAT (first, ' ', last)
FROM Director;