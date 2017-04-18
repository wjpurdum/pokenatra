require 'active_record'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'

Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg")
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg")
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg")
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg")
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg")
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg")
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg")
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg")

Trainer.create(name: "Moon", level: 4, pokemon_id:  )http://vignette2.wikia.nocookie.net/pokemon/images/1/19/Female_pokemon-sun-moon-characters.png/revision/latest?cb=20161017204249
Trainer.create(name: "Gladion", level: 1, pokemon_id:)http://cdn.bulbagarden.net/upload/thumb/2/27/Sun_Moon_Gladion.png/150px-Sun_Moon_Gladion.png
Trainer.create(name: "Mallow", level: 7, pokemon_id:)http://cdn.bulbagarden.net/upload/thumb/3/30/Sun_Moon_Mallow.png/200px-Sun_Moon_Mallow.png

#id SERIAL PRIMARY KEY,
#name VARCHAR,
#level INTEGER,
#img_url VARCHAR,
#pokemon_id INTEGER
