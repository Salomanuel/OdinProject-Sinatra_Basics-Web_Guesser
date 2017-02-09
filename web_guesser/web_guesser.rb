require 'sinatra'
require 'sinatra/reloader'

number = rand(100)

get '/' do
	erb :index , :locals => {:number => number}
end

# if params["guess"] > number
# 	"#{params["guess"]} is higher than #{number}"
# end