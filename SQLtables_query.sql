-- Create Tables
CREATE TABLE stats1 (
  "Pokemon" TEXT PRIMARY KEY,
	"generation" INT,
	"type" text,
	"hp" INT,
	"attack" INT,
	"defense" INT,
	"speed" INT
);

CREATE TABLE popular (
  "Pokemon" TEXT PRIMARY KEY,
	"NUmber of votes" INT,
	"Rank" INT
);

CREATE TABLE Popularity_Ranking_Stats (
  "Pokemon" TEXT PRIMARY KEY,
	"generation" INT,
	"type" text,
	"hp" INT,
	"attack" INT,
	"defense" INT,
	"speed" INT,
	"Number of votes" INT,
	"Popularity Ranking" INT
);

CREATE TABLE Rarity_Price (
  "Pokemon" TEXT PRIMARY KEY,
	"generation" INT,
	"type" text,
	"hp" INT,
	"attack" INT,
	"defense" INT,
	"speed" INT,
	"Number of votes" INT,
	"Popularity Ranking" INT,
	"Card Rarity" TEXT,
	"Market Price" MONEY
);

-- Query to check successful load
SELECT * FROM stats1;
SELECT * FROM popular;
SELECT * FROM Popularity_Ranking_Stats;
SELECT * FROM Rarity_Price;
-- Join tables 



