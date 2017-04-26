-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Drop Database if exists
DROP DATABASE IF EXISTS tournament;

-- Drop Tables if exist
DROP TABLE IF EXISTS players CASCADE;
DROP TABLE IF EXISTS matches CASCADE;

--Drop view if exists
DROP VIEW IF EXISTS results CASCADE;
DROP VIEW IF EXISTS wins CASCADE;
DROP VIEW IF EXISTS match_view CASCADE;
DROP VIEW IF EXISTS standings CASCADE;

-- create a database named tournament
create database tournament;

-- switch to the newly created databse
\c tournament

-- table for the name of the players enrolled in the game
create table players(
    id serial PRIMARY KEY,
    name text
);

-- get the winner and loser name for each match
create table matches(
    winner INTEGER references players,
    loser INTEGER references players,
    PRIMARY KEY(winner, loser)
);

-- This view tells how many wins each player has
create view wins as select players.id, count(matches.winner) as wins from players left join matches on players.id = matches.winner group by players.id order by wins desc;
 
-- This view tells how may matches has been played
create view match_view as select players.id, count(matches.*) as match1 from players left join matches on players.id = matches.winner or players.id = matches.loser group by players.id order by players.id;

-- This view gives the list of players' name, their id, wins and match played
create view standings as select players.id, players.name, wins.wins, match_view.match1 from players join wins on players.id = wins.id join match_view on players.id = match_view.id order by wins.wins desc, players.id asc;


