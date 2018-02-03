require 'sinatra'
require 'sinatra/reloader'

	@@rando = rand(100)
		# @@answer ||= "boh"




get '/' do
	

	case params['guess'].to_i
	when @@rando       then @@answer = "you got it! it was #{@@rando}"
	when (@@rando - 5)..@@rando then @@answer = "just a bit too small"
	when @@rando..(@@rando + 5) then @@answer = "just a bit too big"
	when 0...@@rando   then @@answer = "way too small"
	when @@rando..100  then @@answer = "way too big"
	end
	
	erb :index

	# throw params.inspect
end

