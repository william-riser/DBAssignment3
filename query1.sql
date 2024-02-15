CREATE TABLE Music_Video (
    music_video_id INTEGER,
    video_director TEXT,
    track_id INTEGER NOT NULL,
    PRIMARY KEY (music_video_id),
    FOREIGN KEY (track_id) REFERENCES tracks(track_id)
)

