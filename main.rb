require 'sass'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'


get '/styles.css' do
  scss :styles
end

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

get '/fake-error' do
end

not_found do
  @title = "WTF?"
  slim :not_found
end
