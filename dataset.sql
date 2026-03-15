-- dataset.sql
-- Music Streaming Performance Analysis
-- Temi Ogunkanmi
-- 2026

-- Simulated dataset representing music streaming activity across artists and countries

DROP TABLE IF EXISTS streams;

CREATE TABLE streams (
    stream_id INT PRIMARY KEY,
    song_id INT,
    artist VARCHAR(50),
    streams INT,
    country VARCHAR(50)
);

INSERT INTO streams (stream_id, song_id, artist, streams, country) VALUES
(1, 101, 'Amaarae', 5, 'UK'),
(2, 102, 'Kelela', 8, 'USA'),
(3, 101, 'Amaarae', 3, 'UK'),
(4, 103, 'Abra', 6, 'Canada'),
(5, 102, 'Kelela', 4, 'USA'),
(6, 103, 'Abra', 7, 'USA'),
(7, 101, 'Amaarae', 2, 'UK'),
(8, 104, 'SZA', 9, 'USA');