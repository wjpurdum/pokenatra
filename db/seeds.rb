require 'active_record'
require 'pg'
require_relative 'connection'
require_relative '../models/trainer'
require_relative '../models/pokemon'


Trainer.destroy_all
moon = Trainer.create(name: "Moon", level: 4, img_url: "http://vignette2.wikia.nocookie.net/pokemon/images/1/19/Female_pokemon-sun-moon-characters.png/revision/latest?cb=20161017204249")
gladion = Trainer.create(name: "Gladion", level: 1, img_url: "http://cdn.bulbagarden.net/upload/thumb/2/27/Sun_Moon_Gladion.png/150px-Sun_Moon_Gladion.png")
mallow = Trainer.create(name: "Mallow", level: 7, img_url: "http://cdn.bulbagarden.net/upload/thumb/3/30/Sun_Moon_Mallow.png/200px-Sun_Moon_Mallow.png")

Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer: moon)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer: gladion)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer: mallow)
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer: moon)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer: mallow)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer: mallow)
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer: moon)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer: gladion)
