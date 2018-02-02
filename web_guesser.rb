require 'sinatra'
require 'sinatra/reloader'

@@rando = rand(100)

get '/' do
	"The secret number is #{@@rando}"
end
