

CREATE TABLE Profile 
(
	gender CHAR(7),
	first_name CHAR(20) NOT NULL,
	last_name CHAR(20) NOT NULL,
	birth_year INT,
	birth_month INT,
	birth_date INT,
	user_ID INT,
	PRIMARY KEY(user_ID)
);

CREATE TABLE Home
(
	city CHAR(20),
	state CHAR(20),
	country TEXT,
	PRIMARY KEY(user_ID),
	FOREIGN KEY (user_ID) REFERENCES Profile
);

CREATE TABLE Current_location
(
	city CHAR(20),
	state CHAR(20),
	country TEXT,
	user_ID INT,
	PRIMARY KEY(user_ID),
	FOREIGN KEY (user_ID) REFERENCES Profile
);

CREATE TABLE Photo
(
	photo_ID INT,
	photo_link TEXT,
	photo_monitored_time TIMESTAMP,
	caption TEXT,
	photo_created_time TIMESTAMP,
	PRIMARY KEY(photo_ID),
);

CREATE TABLE Tags
(
	x_loc NUMERIC,
	y_loc NUMERIC,
	photo_ID INT,
	user_ID INT,
	PRIMARY KEY (user_ID, photo_ID),
	FOREIGN KEY (user_ID) REFERENCES Profile,
	FOREIGN KEY (photo_ID) REFERENCES Photo
);

CREATE TABLE Album
(
	album_ID INT,
	owner_ID INT,
	album_name TEXT,
	cover_photo_ID INT NOT NULL,
	album_created_time TIMESTAMP,
	album_modified_time TIMESTAMP,
	album_link TEXT,
	album_visibility CHAR(20),
	PRIMARY KEY (album_ID),
	FOREIGN KEY (owner_ID) REFERENCES Profile,
	FOREIGN KEY (cover_photo_ID) REFERENCES Photo

);

CREATE TABLE Messages 
(
	sender_ID INTEGER,
	reciever_ID	INTEGER,
	content	TEXT,
	time TIMESTAMP,
	PRIMARY KEY(sender_ID, reciever_ID, time),
	FOREIGN KEY(sender_ID) REFERENCES Profile,
	FOREIGN KEY(reciever_ID) REFERENCES Profile
);

CREATE TABLE Friends
(
	ID_1 INT,
	ID_2 INT,
	PRIMARY KEY (ID_1, ID_2),
	FOREIGN KEY (ID_1) REFERENCES Profile,
	FOREIGN KEY (ID_2) REFERENCES Profile
);

CREATE TABLE Events
(
	event_ID INT,
	creator_ID INT,
	name TEXT NOT NULL,
	tagline TEXT,
	description TEXT,
	host TEXT NOT NULL,
	type TEXT NOT NULL,
	subtype TEXT NOT NULL,
	location TEXT,
	city TEXT,
	state TEXT,
	country TEXT,
	start_time TIMESTAMP NOT NULL,
	end_time TIMESTAMP NOT NULL,
	PRIMARY KEY (event_ID),
	FOREIGN KEY (creator_ID) REFERENCES Profile
);

CREATE TABLE Participates
(
	participant_ID INT,
	event_ID INT,
	PRIMARY KEY (participant_ID, event_ID);
	FOREIGN KEY (participant_ID) REFERENCES Profile,
	FOREIGN KEY (event_ID) REFERENCES Events
);

CREATE TABLE College
(
	name TEXT UNIQUE,
	ID_2 INT,
	FOREIGN KEY (ID_1) REFERENCES Profile,
	FOREIGN KEY (ID_2) REFERENCES Profile
);

CREATE TABLE Attends
(
	ID_1 INT,
	ID_2 INT,
	PRIMARY KEY (ID_1, ID_2);
	FOREIGN KEY (ID_1) REFERENCES Profile,
	FOREIGN KEY (ID_2) REFERENCES Profile
);













