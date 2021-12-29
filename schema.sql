DROP TABLE IF EXISTS grupo6.player;
DROP TABLE IF EXISTS grupo6.team;
DROP TABLE IF EXISTS grupo6.draft;
DROP TABLE IF EXISTS grupo6.recruit;
DROP TABLE IF EXISTS grupo6.statics;



CREATE TABLE grupo6.player (
    idPlayer INT PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE grupo6.team (
    idTeam INT PRIMARY KEY,
    conference VARCHAR(5),
    name VARCHAR(30)
);

CREATE TABLE grupo6.draft(
    idDraft INT PRIMARY KEY,
    drafted BOOLEAN,
    draftNumber INT
);
    
CREATE TABLE grupo6.recruit(
    idRecruit INT PRIMARY KEY,
    recruitRank FLOAT
);

CREATE TABLE grupo6.statics(
    idStatics INT PRIMARY KEY,
    gamesPlayed INT, 
    minutesInPercentage FLOAT,
    offensiveRating FLOAT,
    usageStat FLOAT,
    effectiveFieldGoalPercentage FLOAT,
    truesShootingPercentage FLOAT,
    offensiveReboundPercentage FLOAT,
    defensiveReboundPercentage FLOAT,
    assistPercentage FLOAT,
    turnoverPercentage FLOAT,
    freeThrowsMade INT,
    freeThrowsAttempted INT,
    freeThrowsPercentage FLOAT,
    twoPointersMade INT,
    twoPointersAttempted INT,
    twoPointersPercentage FLOAT,
    threePointersMade INT,
    threePointersAttempted INT,
    threePointersPercentage FLOAT,
    blockInPercentage FLOAT,
    stealPercentage FLOAT,
    freeThrowRate FLOAT,
    defensiveRating FLOAT,
    adjustedDefensiveRating FLOAT,
    defensivePointsOverReplacementPerAdjustedGame FLOAT,
    stops FLOAT,
    boxPplusOrminus FLOAT,
    offensiveBoxPlusOrminus FLOAT,
    defensiveBoxPlusOrminus FLOAT,
    gbpm FLOAT,
    minutesPlayed FLOAT,
    offensiveGbpm FLOAT,
    defensiveGbpm FLOAT,
    offensiveRebounds FLOAT,
    defensiveRebounds FLOAT,
    totalRebounds FLOAT,
    assists FLOAT,
    steals FLOAT,
    blocks FLOAT,
    points FLOAT,
    assistOrTurnoverRatio FLOAT,
    year INT,
    collageYear VARCHAR(3),
    idPlayer INT REFERENCES player(idPlayer),
    idTeam INT REFERENCES team(idTeam),
    idDraft INT REFERENCES draft(idDraft),
    idRecruit INT REFERENCES recruit(idRecruit)
);

