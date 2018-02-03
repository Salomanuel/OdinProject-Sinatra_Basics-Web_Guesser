require 'sinatra'
require 'sinatra/reloader'

	@@rando = rand(100)
		# @@answer ||= "boh"




get '/' do
	

	case params['guess'].to_i
	when 0...@@rando   then @@answer = "too small"
	when @@rando       then @@answer = "you got it!"
	when @@rando..100  then @@answer = "too big"
	end

	erb :index

	# throw params.inspect
end
