require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'
require 'sass'
require './song'

get('/styles.css'){ scss :styles }

get '/' do
  @title = "Songs By Sinatra"
  slim :home
end

get '/about' do
  @title = "About"
  slim :about
end

get '/contact' do
  @title = "Contact Us"
  slim :contact
end

get '/songs' do
  @songs = Song.all
  slim :songs
end

get '/songs/:id' do
  @song = Song.get(params[:id])
  slim :show_song
end

get '/fake-error' do
end

not_found do
  @title = "WTF?"
  slim :not_found
end
