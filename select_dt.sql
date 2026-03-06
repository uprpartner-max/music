SELECT 
    g.name AS genre_name,
    COUNT(sg.singer_id) AS singer_count
FROM Genres g
LEFT JOIN Singer_Genre sg ON g.id = sg.genre_id
GROUP BY g.id, g.name
ORDER BY singer_count DESC;


SELECT 
    COUNT(t.id) AS track_count
FROM Tracks t
JOIN Albums a ON t.album_id = a.id
WHERE a.year BETWEEN 2019 AND 2020;

SELECT 
    a.title AS album_title,
    a.year,
    AVG(t.duration) AS avg_duration
FROM Albums a
LEFT JOIN Tracks t ON a.id = t.album_id
GROUP BY a.id, a.title, a.year
ORDER BY avg_duration DESC;


SELECT DISTINCT s.name
FROM Singers s
WHERE s.id NOT IN (
    SELECT sa.singer_id
    FROM Singer_Album sa
    JOIN Albums a ON sa.album_id = a.id
    WHERE a.year = 2020
)
ORDER BY s.name;


SELECT DISTINCT c.title
FROM Compilations c
JOIN Compilation_Track ct ON c.id = ct.compilation_id
JOIN Tracks t ON ct.track_id = t.id
JOIN Albums a ON t.album_id = a.id
JOIN Singer_Album sa ON a.id = sa.album_id
JOIN Singers s ON sa.singer_id = s.id
WHERE s.name = 'Taylor Swift'
ORDER BY c.title;
