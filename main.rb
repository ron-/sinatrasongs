require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  @title = "Songs By Sinatra"
  erb :home
end

get '/about' do
  @title = "About"
  erb :about
end

get '/contact' do
  @title = "Contact Us"
  erb :contact
end

not_found do
  @title = "WTF?"
  erb :not_found
end
