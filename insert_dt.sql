INSERT INTO Genres (name) VALUES
('Pop'),
('Hip-Hop'),
('R&B'),
('Electronic'),
('Rock');


INSERT INTO Singers (name) VALUES
('Taylor Swift'),
('The Weeknd'),
('Billie Eilish'),
('Dua Lipa'),
('Harry Styles');


INSERT INTO Albums (title, year) VALUES
('Midnights', 2022),
('After Hours', 2020),
('Happier Than Ever', 2021),
('Future Nostalgia', 2020),
('Harry''s House', 2022);


INSERT INTO Tracks (title, duration, album_id) VALUES
('Anti-Hero', '03:20'::INTERVAL, 1),
('Lavender Haze', '03:22'::INTERVAL, 1),
('Blinding Lights', '03:20'::INTERVAL, 2),
('Happier Than Ever', '04:58'::INTERVAL, 3),
('Levitating', '03:23'::INTERVAL, 4),
('As It Was', '02:47'::INTERVAL, 5),
('My Boy', '02:50'::INTERVAL, 3),
('My Love', '03:15'::INTERVAL, 2),
('Short Track', '01:45'::INTERVAL, 4),
('Another Song', '03:40'::INTERVAL, 5);


INSERT INTO Compilations (title, year) VALUES
('Best of 2020', 2020),
('Pop Hits', 2021),
('My Favorite Songs', 2022),
('Top Charts 2023', 2023),
('R&B Collection', 2021);


INSERT INTO Singer_Genre (singer_id, genre_id) VALUES
(1, 1),  -- Taylor Swift - Pop
(1, 5),  -- Taylor Swift - Rock (для задания 4!)
(2, 3),  -- The Weeknd - R&B
(2, 1),  -- The Weeknd - Pop (для задания 4!)
(3, 1),  -- Billie Eilish - Pop
(4, 1),  -- Dua Lipa - Pop
(4, 4),  -- Dua Lipa - Electronic (для задания 4!)
(5, 1);  -- Harry Styles - Pop


INSERT INTO Singer_Album (singer_id, album_id) VALUES
(1, 1),  -- Taylor Swift - Midnights
(2, 2),  -- The Weeknd - After Hours
(3, 3),  -- Billie Eilish - Happier Than Ever
(4, 4),  -- Dua Lipa - Future Nostalgia
(5, 5);  -- Harry Styles - Harry's House


INSERT INTO Compilation_Track (compilation_id, track_id) VALUES
(1, 2),  -- Blinding Lights в Best of 2020
(1, 4),  -- Levitating в Best of 2020
(2, 1),  -- Anti-Hero в Pop Hits
(2, 5),  -- As It Was в Pop Hits
(2, 6),  -- Lavender Haze в Pop Hits
(3, 7),  -- My Boy в My Favorite Songs
(3, 8),  -- My Love в My Favorite Songs
(4, 1),  -- Anti-Hero в Top Charts 2023
(4, 6),  -- As It Was в Top Charts 2023
(5, 3),  -- Blinding Lights в R&B Collection
(5, 8);  -- My Love в R&B Collection

SELECT * FROM Singers;
