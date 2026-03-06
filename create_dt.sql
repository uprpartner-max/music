 
CREATE TABLE Genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE Singers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);



CREATE TABLE Albums (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    year INTEGER
);


CREATE TABLE Tracks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    duration INTERVAL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id) ON DELETE CASCADE
);



CREATE TABLE Singer_Genre (
    id SERIAL PRIMARY KEY,
    singer_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    FOREIGN KEY (singer_id) REFERENCES Singers(id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES Genres(id) ON DELETE CASCADE,
    UNIQUE (singer_id, genre_id)
);



CREATE TABLE Singer_Album (
    id SERIAL PRIMARY KEY,
    singer_id INTEGER NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (singer_id) REFERENCES Singers(id) ON DELETE CASCADE,
    FOREIGN KEY (album_id) REFERENCES Albums(id) ON DELETE CASCADE,
    UNIQUE (singer_id, album_id));


CREATE TABLE Compilations (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    year INTEGER
);


CREATE TABLE Compilation_Track (
    id SERIAL PRIMARY KEY,
    compilation_id INTEGER NOT NULL,
    track_id INTEGER NOT NULL,
    FOREIGN KEY (compilation_id) REFERENCES Compilations(id) ON DELETE CASCADE,
    FOREIGN KEY (track_id) REFERENCES Tracks(id) ON DELETE CASCADE,
    UNIQUE (compilation_id, track_id)
);
