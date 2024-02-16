--Write a query that lists all the tracks that are not in one of the top 5 genres with longer duration in the database. 

SELECT *
FROM tracks
WHERE GenreId NOT IN (
        SELECT GenreId
        FROM (
                SELECT genres.GenreId,
                    AVG(tracks.Milliseconds) as avg_length
                FROM genres
                    JOIN tracks ON genres.GenreId = tracks.GenreId
                GROUP BY genres.GenreId
                ORDER BY avg_length DESC
                LIMIT 5
            )
    );

