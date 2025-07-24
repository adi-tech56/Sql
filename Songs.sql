CREATE TABLE user_profile (id SERIAL PRIMARY KEY,
name VARCHAR(150) NOT NULL,
email VARCHAR(250) NOT NULL,
phone VARCHAR(12) NOT NULL
);
CREATE TABLE playlist(
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL
);
CREATE TABLE  user_create_playlist(
id SERIAL PRIMARY KEY,
user_id INT NOT NULL,
list_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user_profile(id),
FOREIGN KEY (list_id) REFERENCES playlist(id)
);
CREATE TABLE  artist(
id SERIAL PRIMARY KEY,
name VARCHAR(150) NOT NULL 
);
CREATE TABLE  genre(
id SERIAL PRIMARY KEY,
name VARCHAR(50) UNIQUE NOT NULL
);
CREATE TABLE  album(
id SERIAL PRIMARY KEY,
album_name VARCHAR(100) NOT NULL 
);

CREATE TABLE song(
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
track_length INT  NOT NULL,
genre_id INT  NOT NULL,
album_id INT  NOT NULL,
FOREIGN KEY (genre_id) REFERENCES genre(id),
FOREIGN KEY (album_id) REFERENCES album(id)
);
CREATE TABLE playlist_song(
id SERIAL PRIMARY KEY,
song_id INT NOT NULL,
playlist_id INT  NOT NULL,
FOREIGN KEY (song_id) REFERENCES song(id),
FOREIGN KEY(playlist_id) REFERENCES playlist(id)
);
CREATE TABLE artist_sing_song(
id SERIAL PRIMARY KEY,
song_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (song_id) REFERENCES song(id),
FOREIGN KEY (artist_id) REFERENCES artist(id)
);