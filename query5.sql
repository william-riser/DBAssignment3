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
            ) as top_genres
    );

