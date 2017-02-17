require 'sinatra'
require 'sinatra/reloader'

get "/" do
	@title = "voting page"
	@vote  = params['vote']
	erb :index
end


Choices = {
	"P-F" => "Prosciutto e Funghi",
	"MAR" => "Margherita",
	"4FO" => "Quattro Formaggi"
}