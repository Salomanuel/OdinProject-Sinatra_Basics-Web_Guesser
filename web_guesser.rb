require 'sinatra'
require 'sinatra/reloader'


get '/' do
	@@rando = rand(100)
	erb :index
end
