require 'sinatra'
require 'sinatra/reloader'
require 'yaml/store'

get '/' do
	@title = "Welcome to the Suffragist!"
	@vote  = params['vote']
	erb :index, 	layout: :main
end

post '/cast' do
	@title = "Thanks for casting your vote!"
	@vote  = params['vote']
	@store = YAML::Store.new 'votes.yml'
	@store.transaction do
		@store['votes'] 			 ||= {}
		@store['votes'][@vote] ||=	0
		@store['votes'][@vote] +=		1
	end
	erb :cast
end

get "/results" do
	@title = "results"
	@store = YAML::Store.new 'votes.yml'
	@votes = @store.transaction { @store['votes'] }
	erb :results
end


Choices = {
	"HAM" => "Hamburger",
	"PIZ" => "Pizza",
	"CUR" => "Curry",
	"NOO" => "Noodles",
}