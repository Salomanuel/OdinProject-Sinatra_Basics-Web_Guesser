require "sinatra"
require "sinatra/reloader"

get "/" do
	@title = "voting page"
	erb :index
end

post "/cast" do
	@title = "thanks for voting"
	@vote  = params["vote"]
	erb :cast
end

Choices = { 
	"MAR" => "Margherita",
	"PeF"	=> "Prosciutto e Funghi",
	"4FM" => "Quattro Formaggi"
	}