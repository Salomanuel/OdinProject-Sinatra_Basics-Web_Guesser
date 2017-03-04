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

get '/form' do
	erb :form
end

post '/form' do
	"you said #{params[:message]}"
end

get '/secret' do
	erb :secret
end

post '/secret' do
	params[:secret].reverse
end

get '/notsecret/:secret' do
	params[:secret].reverse
end