-- List the albums with the most tracks in descending order
SELECT albums.Title AS AlbumTitle,
    artists.Name AS ArtistName,
    COUNT(tracks.TrackId) AS TrackCount
FROM albums
    JOIN artists ON albums.ArtistId = artists.ArtistId
    JOIN tracks ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.AlbumId
ORDER BY TrackCount DESC;