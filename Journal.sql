CREATE TABLE user_profile(
id SERIAL PRIMARY KEY,
name VARCHAR(150) NOT NULL,
email VARCHAR(250) NOT NULL,
phone VARCHAR(12) NOT NULL
);
CREATE TABLE journal(
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
user_id INT NOT NULL,
date DATE NOT NULL,
FOREIGN KEY (user_id) REFERENCES user_profile(id)
);
CREATE TABLE mood(
id SERIAL PRIMARY KEY,
name VARCHAR(20) NOT NULL
);
CREATE TABLE journal_details(
id SERIAL PRIMARY KEY,
journal_id INT NOT NULL,
mood_id INT NOT NULL,
title VARCHAR(50) NOT NULL,
journal_data VARCHAR(500) NOT NULL,
FOREIGN KEY (journal_id) REFERENCES journal(id),
FOREIGN KEY (mood_id) REFERENCES mood(id)
);
CREATE TABLE user_mood(
id SERIAL PRIMARY KEY,
mood_id INT NOT NULL,
user_id INT NOT NULL,
FOREIGN KEY (mood_id) REFERENCES mood(id),
FOREIGN KEY (user_id) REFERENCES user_profile(id)

);