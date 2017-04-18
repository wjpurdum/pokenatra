require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'
require_relative 'models/trainer'

get '/trainers' do
  @trainers = Trainer.all
  erb :"trainers/index"
end

get '/pokemons/new' do
  erb :"pokemons/new"
end

delete '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect("/")
end

#base
get '/' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

#show selected
get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/show"
end

#post request for create
post '/pokemons' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemons/#{@pokemon.id}"
end

## To change

get "/pokemons/:id/edit" do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemons/edit")
end

put '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect("/pokemons/#{@pokemon.id}")
end
