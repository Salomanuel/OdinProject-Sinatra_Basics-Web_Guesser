require 'sinatra'
require 'sinatra/reloader'

	@@rando = rand(100)

get '/' do
	erb :index
end
