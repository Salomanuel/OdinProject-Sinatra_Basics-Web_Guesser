require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@title = "Welcome to the Suffragist!"
	@vote  = params['vote']
	erb :index, 	layout: :main
end

post '/cast' do
	@title = "Thanks for casting your vote!"
	@vote = params['vote']
	erb :cast, 		layout: :main
end


Choices = {
	"HAM" => "Hamburger",
	"PIZ" => "Pizza",
	"CUR" => "Curry",
	"NOO" => "Noodles",
}