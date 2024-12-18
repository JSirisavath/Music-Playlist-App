CREATE SCHEMA `funmusicplaylistapp_2` ;

use `funmusicplaylistapp_2`;

CREATE TABLE Music_Genre (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL,
    created_date DATE NOT NULL,
    last_updated_date DATE NOT NULL
);

CREATE TABLE Artist (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_stage_name VARCHAR(255),
    artist_first_name VARCHAR(255),
    artist_last_name VARCHAR(255),
    artist_birthdate DATE,
    created_date DATE NOT NULL,
    last_updated_date DATE NOT NULL
);

CREATE TABLE Album (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album_title VARCHAR(255) NOT NULL,
    release_date DATE NOT NULL,
    artist_id INT NOT NULL,
    created_date DATE NOT NULL,
    last_updated_date DATE NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
);

CREATE TABLE Song (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_title VARCHAR(255) NOT NULL,
    album_id INT NOT NULL,
    song_duration TIME NOT NULL,
    track_number INT NOT NULL,
    created_date DATE NOT NULL,
    last_updated_date DATE NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Album(album_id)
);

CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL UNIQUE,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    date_joined DATE NOT NULL,
    created_date DATE NOT NULL,
    last_updated_date DATE NOT NULL
);

CREATE TABLE Review (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    album_id INT NOT NULL,
    review_rating INT NOT NULL,
    review_comment VARCHAR(255),
    created_date DATE NOT NULL,
    last_updated_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (album_id) REFERENCES Album(album_id)
);

CREATE TABLE User_Playlist (
    playlist_id INT AUTO_INCREMENT PRIMARY KEY,
    playlist_name VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    creation_date DATE NOT NULL,
    created_date DATE NOT NULL,
    last_updated_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Playlist_Song (
    playlist_id INT NOT NULL,
    song_id INT NOT NULL,
    created_date DATE NOT NULL,
    last_updated_date DATE NOT NULL,
    PRIMARY KEY (playlist_id, song_id),
    FOREIGN KEY (playlist_id) REFERENCES User_Playlist(playlist_id),
    FOREIGN KEY (song_id) REFERENCES Song(song_id)
);

CREATE TABLE Artist_Genre (
    artist_id INT NOT NULL,
    genre_id INT NOT NULL,
    created_date DATE NOT NULL,
    last_updated_date DATE NOT NULL,
    PRIMARY KEY (artist_id, genre_id),
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Music_Genre(genre_id)
);
