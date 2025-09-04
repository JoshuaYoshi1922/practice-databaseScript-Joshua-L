START TRANSACTION;

DROP TABLE IF EXISTS Video_Game, Players, Purchase_date;

CREATE TABLE Video_Game ( 
game_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
game_name VARCHAR(50) NOT NULL,
cost INT NOT NULL
);

CREATE TABLE Players (
player_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
gamertag VARCHAR(50) 
);

CREATE TABLE Purchase_date (
purchase_id INT PRIMARY KEY AUTO_INCREMENT,
player_id INT NOT NULL,
game_id INT NOT NULL,
purchase DATE,
FOREIGN KEY (player_id) REFERENCES Players(player_id),
FOREIGN KEY (game_id) REFERENCES Video_Game(game_id)
);

SELECT * FROM Video_Game;

INSERT INTO Video_Game (game_id, game_name, cost) VALUES
(1, "Pokemon", 50),
(2, "Super Smash brothers", 60),
(3, "Mario Cart", 80);

INSERT INTO Players (player_id, first_name, last_name, gamertag) VALUES
(1, "Billy", "Bob", "BoBo"),
(2, "Bruce", "Wayne", "NOTbatman"),
(3, "Michael", "Scott", "That's_What_She_Said"),
(4, "Travis", "Swift", "TKTSoxox");

SELECT *FROM Players;

INSERT INTO Purchase_date (player_id, game_id, purchase) VALUES
(1, 2, "2024-09-01"),
(1, 3, "2025-04-10"),
(2, 2, "2026-09-03"),
(3, 1, "2026-01-05"),
(4, 3, "2025-12-12");

SELECT*FROM Purchase_date;

COMMIT