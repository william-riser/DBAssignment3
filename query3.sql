-- Query 3:  Insert another video for the track "Voodoo", assuming that you don't know the TrackId, so your insert query should specify the TrackId directly.

INSERT INTO Music_Video (music_video_id, video_director, track_id)
SELECT 12, "Voodoo Director", TrackId
FROM tracks
WHERE Name = "Voodoo";
