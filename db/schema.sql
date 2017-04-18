DROP TABLE IF EXISTS pokemons;


create table pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  poke_type VARCHAR,
  cp INTEGER,
  img_url VARCHAR
);

create table trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  level INTEGER,
  img_url VARCHAR,
  pokemon_id INTEGER

);
