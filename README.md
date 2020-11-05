# Group-Project-2
Team Postgres ETL of Pokemon Data


Extract CSVs into DataFrames
•	Source : https://www.kaggle.com/mariotormo/complete-pokemon-dataset-updated-090420

Extract Pokemon votes and rank
•	Source : https://pastebin.com/LvhaTx7w / https://www.reddit.com/r/pokemon/comments/c0w4s0/favourite_pok%C3%A9mon_survey_results/

Extract Pokemon card rarity and pricing
•	Source https://shop.tcgplayer.com/price-guide/pokemon/base-set




### Transform Pokedex DataFrame
### Transform Popularity Rank
### Transform pokedex and rank
### Transform Pokemon Card rarity & Pricing DataFrame




### Load DataFrames into database
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
