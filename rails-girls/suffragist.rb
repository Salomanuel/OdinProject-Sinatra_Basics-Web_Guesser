require "sinatra"
require "sinatra/reloader"

get "/" do
	@title = "voting page"
	erb :index
end

Choices = { 
	"MAR" => "Margherita",
	"PeF"	=> "Prosciutto e Funghi",
	"4FM" => "Quattro Formaggi"
	}