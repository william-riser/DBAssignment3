-- Query 1: Create a new Table Music Video, that is a class of type Track (generalization) but adds the attribute Video director
-- A music video is a track. There cannot be a video without a track, and each track can have either no video or just one. 

CREATE TABLE Music_Video (
    music_video_id INTEGER,
    video_director TEXT,
    track_id INTEGER NOT NULL,
    PRIMARY KEY (music_video_id),
    FOREIGN KEY (track_id) REFERENCES tracks(track_id)
)

