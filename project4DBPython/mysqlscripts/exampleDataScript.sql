INSERT INTO Music_Genre (genre_id, genre_name, created_date, last_updated_date)
VALUES
(1, 'Pop', '2024-11-19', '2024-11-19'),
(2, 'Rock', '2024-11-19', '2024-11-19'),
(3, 'Hip-Hop', '2024-11-19', '2024-11-19'),
(4, 'Jazz', '2024-11-19', '2024-11-19'),
(5, 'Classical', '2024-11-19', '2024-11-19');



INSERT INTO Artist (artist_id, artist_stage_name, artist_first_name, artist_last_name, artist_birthdate, created_date, last_updated_date)
VALUES
(1, 'Taylor Swift', 'Taylor', 'Swift', '1989-12-13', '2024-11-19', '2024-11-19'),
(2, 'Drake', 'Aubrey', 'Graham', '1986-10-24', '2024-11-19', '2024-11-19'),
(3, 'The Weeknd', 'Abel', 'Tesfaye', '1990-02-16', '2024-11-19', '2024-11-19'),
(4, 'Ed Sheeran', 'Ed', 'Sheeran', '1991-02-17', '2024-11-19', '2024-11-19'),
(5, 'Adele', 'Adele', 'Adkins', '1988-05-05', '2024-11-19', '2024-11-19');



INSERT INTO Album (album_id, album_title, release_date, artist_id, created_date, last_updated_date)
VALUES
(1, '1989', '2014-10-27', 1, '2024-11-19', '2024-11-19'),
(2, 'Views', '2016-04-29', 2, '2024-11-19', '2024-11-19'),
(3, 'After Hours', '2020-03-20', 3, '2024-11-19', '2024-11-19'),
(4, 'Divide', '2017-03-03', 4, '2024-11-19', '2024-11-19'),
(5, '30', '2021-11-19', 5, '2024-11-19', '2024-11-19');



INSERT INTO Song (song_id, song_title, album_id, song_duration, track_number, created_date, last_updated_date)
VALUES
(1, 'Blank Space', 1, '00:03:51', 1, '2024-03-01', '2024-03-01'),
(2, 'Hotline Bling', 2, '00:04:27', 2, '2024-05-02', '2024-05-02'),
(3, 'Blinding Lights', 3, '00:03:22', 3, '2024-06-03', '2024-06-03'),
(4, 'Shape of You', 4, '00:03:53', 1, '2024-02-04', '2024-02-04'),
(5, 'Easy on Me', 5, '00:03:44', 2, '2024-01-05', '2024-01-05');



INSERT INTO User (user_id, Username, Email, Password, date_joined, created_date, last_updated_date)
VALUES
(1, 'john_doe', 'john@example.com', 'password123', '2024-01-01', '2024-01-01', '2024-01-01'),
(2, 'joee_doe', 'joee@example.com', 'securepass456', '2024-01-02', '2024-01-02', '2024-01-02'),
(3, 'music_forever', 'lover@example.com', 'loveMusic789', '2024-01-03', '2024-01-03', '2024-01-03'),
(4, 'music_enjoyer', 'creator@example.com', 'createPLs123', '2024-01-04', '2024-01-04', '2024-01-04'),
(5, 'audiomac', 'audio@example.com', 'hiLover456', '2024-01-05', '2024-01-05', '2024-01-05');



INSERT INTO Review (review_id, user_id, album_id, review_rating, review_comment, created_date, last_updated_date)
VALUES
(1, 1, 1, 5, 'Amazing album!', '2024-01-01', '2024-01-01'),
(2, 2, 2, 4, 'Really liked it!', '2024-01-02', '2024-01-02'),
(3, 3, 3, 5, 'Best album ever!', '2024-01-03', '2024-01-03'),
(4, 4, 4, 4, 'Great work!', '2024-01-04', '2024-01-04'),
(5, 5, 5, 3, 'Good but could be better.', '2024-01-05', '2024-01-05'),
(6, 4, 1, 3, 'Not my favorite, but good.', '2024-01-08', '2024-01-08'),
(7, 5, 1, 4, 'Catchy tunes!', '2024-01-09', '2024-01-09'),
(8, 1, 2, 5, 'Masterpiece!', '2024-01-10', '2024-01-10'),
(9, 2, 2, 4, 'Solid album.', '2024-01-11', '2024-01-11'),
(10, 4, 3, 5, 'Couldn’t be better.', '2024-01-17', '2024-01-17'),
(11, 5, 3, 4, 'Solid performance.', '2024-01-18', '2024-01-18'),
(12, 1, 3, 5, 'The best album so far.', '2024-01-19', '2024-01-19'),
(13, 2, 3, 5, 'Perfection.', '2024-01-20', '2024-01-20'),
(14, 1, 3, 4, 'Amazing work!', '2024-01-14', '2024-01-14');



INSERT INTO User_Playlist (playlist_id, playlist_name, user_id, creation_date, created_date, last_updated_date)
VALUES
(1, 'My Favorites', 1, '2024-01-01', '2024-01-01', '2024-01-01'),
(2, 'Top Hits', 2, '2024-01-02', '2024-01-02', '2024-01-02'),
(3, 'Chill Vibes', 3, '2024-01-03', '2024-01-03', '2024-01-03'),
(4, 'Party Mix', 4, '2024-01-04', '2024-01-04', '2024-01-04'),
(5, 'Relaxing Tunes', 5, '2024-01-05', '2024-01-05', '2024-01-05');



INSERT INTO Playlist_Song (playlist_id, song_id, created_date, last_updated_date)
VALUES
(1, 1, '2024-01-01', '2024-01-01'),
(1, 2, '2024-01-01', '2024-01-01'),
(2, 3, '2024-01-02', '2024-01-02'),
(2, 4, '2024-01-02', '2024-01-02'),
(3, 5, '2024-01-03', '2024-01-03');



INSERT INTO Artist_Genre (artist_id, genre_id, created_date, last_updated_date)
VALUES
(1, 1, '2024-01-01', '2024-01-01'),
(2, 3, '2024-01-02', '2024-01-02'),
(3, 3, '2024-01-03', '2024-01-03'),
(4, 2, '2024-01-04', '2024-01-04'),
(5, 4, '2024-01-05', '2024-01-05');


