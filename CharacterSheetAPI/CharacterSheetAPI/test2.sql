﻿

CREATE TABLE EVENTS_TABLE
(
	Event_id int PRIMARY KEY,
	event_Title VARCHAR(255),
	event_date DATE,
	place VARCHAR(255),
	event_Description VARCHAR(2047) NOT NULL,
)
CREATE TABLE CHARACTERS_SHEETS
(
	Sheet_id int PRIMARY KEY,
	FK_Player_id int NOT NULL,
	name VARCHAR(15) NOT NULL,
	money int DEFAULT 0,
	description VARCHAR(8000),
	approved bit DEFAULT 0,
	FK_Event_id int REFERENCES EVENTS_TABLE(Event_id),
)




CREATE TABLE API_KEYS
(
	Id int PRIMARY KEY,
	APIKEY VARCHAR(10) UNIQUE,
	Event_id int FOREIGN KEY REFERENCES EVENTS_TABLE(Event_id) NOT NULL,
	Asp_User_id nvarchar(450) FOREIGN KEY REFERENCES AspNetUsers(Id) NOT NULL,
)

CREATE TABLE ASP_USER_EVENT
(
	ASP_USER_EVENT_Id int PRIMARY KEY,
	Asp_User_id nvarchar(450) FOREIGN KEY REFERENCES AspNetUsers(Id) NOT NULL,
	Event_id_FK int FOREIGN KEY REFERENCES EVENTS_TABLE(Event_id) NOT NULL,
)
CREATE TABLE PLAYERS
(
	Player_id int PRIMARY KEY,
	name VARCHAR(15) NOT NULL,
	surname VARCHAR(15) NOT NULL,
	phone VARCHAR(12) UNIQUE,
	email VARCHAR(255) NOT NULL UNIQUE,
	Asp_User_id_fk nvarchar(450) UNIQUE,
)


-- CONSTRAINTS
ALTER TABLE CHARACTERS_SHEETS 
ADD FOREIGN KEY (FK_Event_id) REFERENCES EVENTS_TABLE(FK_Event_id);
ALTER TABLE CHARACTERS_SHEETS 
ADD FOREIGN KEY (FK_PLAYER_id) REFERENCES PLAYERS(Player_id);
