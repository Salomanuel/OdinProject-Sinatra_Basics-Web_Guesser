require 'sinatra'
require 'sinatra/reloader'

get "/" do
	@title = "voting page"
	erb :index
end