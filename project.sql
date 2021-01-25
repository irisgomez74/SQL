--Create a videos table
CREATE TABLE videos (
    title_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(50) UNIQUE NOT NULL,
    video_length SMALLINT NOT NULL,
   	url VARCHAR(400) UNIQUE NOT NULL
);

SELECT * FROM videos

--Populate the videos table
INSERT INTO videos (title_id, title, video_length, url)
VALUES ('1001', 'An Imogene Film by Sam', '156', 'https://www.youtube.com/watch?v=xtxIZa2vYUM' );

INSERT INTO videos (title_id, title, video_length, url)
VALUES ('1002', 'Imogene, a film by Dean', '32', 'https://www.youtube.com/watch?v=bTYUSeXOTiY' );

INSERT INTO videos (title_id, title, video_length, url)
VALUES ('1003', 'Cocoa Talk with Dean and Sam', '98', 'https://www.youtube.com/watch?v=6f2wByxgdOQ' );


CREATE TABLE reviewers (
    user_id VARCHAR(50) PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
	rating SMALLINT NOT NULL,
	review VARCHAR(500) NOT NULL,
	title_id VARCHAR(50) NOT NULL
);

SELECT * FROM reviewers

--Populate the reviewers table

INSERT INTO reviewers (user_id, username, rating, review, title_id)
VALUES ('0001', 'Gene Siskel', '4', 'An epic tour de farce. Best short film of the year!', '1002');

INSERT INTO reviewers (user_id, username, rating, review, title_id)
VALUES ('0002', 'Roger Ebert', '1', 'Overly long and terribly shot. Pass.', '1001');

INSERT INTO reviewers (user_id, username, rating, review, title_id)
VALUES ('0003', 'Gene Shalit', '2', 'Meh, cute but overly sweet.', '1002');

INSERT INTO reviewers (user_id, username, rating, review, title_id)
VALUES ('0004', 'Leonard Maltin', '3', 'An enjoyable watch. Wished it was longer.', '1001');

SELECT *
FROM videos
INNER JOIN reviewers 
ON videos.title_id = reviewers.title_id