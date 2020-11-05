# Group-Project-2
Team Postgres ETL of Pokemon Data


### Extract CSVs into DataFrames
•	Source : https://www.kaggle.com/mariotormo/complete-pokemon-dataset-updated-090420

### Extract Pokemon votes and rank
•	Source : https://pastebin.com/LvhaTx7w / https://www.reddit.com/r/pokemon/comments/c0w4s0/favourite_pok%C3%A9mon_survey_results/

### Extract Pokemon card rarity and pricing
•	Source https://shop.tcgplayer.com/price-guide/pokemon/base-set




### Transform Pokedex DataFrame

![pokedex](https://user-images.githubusercontent.com/69124282/98305949-ca04dc80-1f90-11eb-8887-6d8270ef2e82.jpg)

### Transform Popularity Rank

![popularity](https://user-images.githubusercontent.com/69124282/98305938-c709ec00-1f90-11eb-85cf-5fdcbf55dc5a.jpg)

### Transform pokedex and rank

![pokedex_popularity](https://user-images.githubusercontent.com/69124282/98305939-c709ec00-1f90-11eb-89d5-efe6ce435876.jpg)

### Transform Pokemon Card rarity & Pricing DataFrame

![rarity_pricing](https://user-images.githubusercontent.com/69124282/98305940-c709ec00-1f90-11eb-95f4-4d0b0f67071a.jpg)

![rarity_pricing_pokedex](https://user-images.githubusercontent.com/69124282/98305941-c709ec00-1f90-11eb-864b-39c852dba3a7.jpg)




### Load DataFrames into database

![pgadmin](https://user-images.githubusercontent.com/69124282/98305942-c7a28280-1f90-11eb-96d8-2aa964665807.jpg)

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
