--- DEFINE SEASONS TABLE

CREATE TABLE Seasons(
    version_season VARCHAR,
    season_name VARCHAR NOT NULL,
    location VARCHAR NOT NULL,
    country VARCHAR NOT NULL,
    winner VARCHAR NOT NULL,
    winner_id VARCHAR NOT NULL,
    final_vote VARCHAR NOT NULL,
    runner_ups VARCHAR NOT NULL,

    PRIMARY KEY (version_season)
);
-- insert data
INSERT INTO Seasons FROM read_csv_auto('/Users/bgrazda/MEDS/EDS-213/survivoR-database/data/seasons.csv', HEADER=TRUE, SAMPLE_SIZE=-1, NULLSTR='NA');


-- create table for castaways
CREATE TABLE Castaways(
    castaway_id VARCHAR NOT NULL,
    full_name VARCHAR,
    occupation VARCHAR ,
    personality_type VARCHAR,
    gender VARCHAR,
    date_of_birth VARCHAR,
    date_of_death VARCHAR,
    PRIMARY KEY (castaway_id)
);

--insert data
INSERT INTO Castaways FROM read_csv_auto('/Users/bgrazda/MEDS/EDS-213/survivoR-database/data/castaways.csv', HEADER=TRUE, SAMPLE_SIZE=-1, NULLSTR='NA');

-- Create table for challenges
CREATE TABLE Challenges(
    version_season VARCHAR NOT NULL,
    season_name VARCHAR NOT NULL,
    season INTEGER NOT NULL,
    episode INTEGER NOT NULL,
    castaway_id VARCHAR NOT NULL,
    castaway VARCHAR NOT NULL,
    challenge_type VARCHAR NOT NULL,
    result VARCHAR NOT NULL,
    -- FOREIGN KEYS
    FOREIGN KEY (version_season) REFERENCES Seasons(version_season),
    FOREIGN KEY (castaway_id) REFERENCES Castaways(castaway_id),
);

--insert table 
INSERT INTO Challenges FROM read_csv_auto('/Users/bgrazda/MEDS/EDS-213/survivoR-database/data/challenges.csv', HEADER=TRUE, SAMPLE_SIZE=-1, NULLSTR='NA');

--create votes table
CREATE TABLE Votes(
    version_season VARCHAR NOT NULL,
    season_name VARCHAR NOT NULL,
    season INTEGER NOT NULL,
    episode INTEGER NOT NULL,
    day INTEGER NOT NULL,
    castaway VARCHAR NOT NULL,
    vote VARCHAR ,
    voted_out VARCHAR,

    FOREIGN KEY (version_season) REFERENCES Seasons(version_season)
);

INSERT INTO Votes FROM read_csv_auto('/Users/bgrazda/MEDS/EDS-213/survivoR-database/data/votes.csv', HEADER=TRUE, SAMPLE_SIZE=-1, NULLSTR='NA');

