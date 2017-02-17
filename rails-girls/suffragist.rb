require 'sinatra'
require 'sinatra/reloader'

get "/" do
	@title = "voting page"
	@vote  = params['vote']
	erb :index
end

get "/results" do
	@title = "results"
	@vote  = params["vote"]
	erb :results
end

Choices = {
	"P-F" => "Prosciutto e Funghi",
	"MAR" => "Margherita",
	"4FO" => "Quattro Formaggi"
}