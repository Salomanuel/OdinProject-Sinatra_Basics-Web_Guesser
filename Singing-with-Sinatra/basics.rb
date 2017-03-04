require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"bella li"
end

get '/about' do
	"a little about me"
end

get '/hello/:name' do
	"ciao #{params[:name]}"
end