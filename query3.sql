INSERT INTO Music_Video (music_video_id, video_director, track_id)
SELECT 12, "Voodoo Director", TrackId
FROM tracks
WHERE Name = "Voodoo";
