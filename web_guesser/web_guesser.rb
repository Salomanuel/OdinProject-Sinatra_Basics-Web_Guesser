require 'sinatra'
require 'sinatra/reloader'


number  = rand(100)

get '/' do
	guess 	= params["guess"].to_i
	message = check_guess(guess, number)
	erb :index, :locals => {:number => number, :message => message, :guess => guess}
end


def check_guess(guess, number)
	case  
		when guess <  number 	then return "too low"
		when guess >  number	then return	"too high"
		when guess == number 	then return "correct! the number was #{number}"
	end
end

# if params["guess"] > number
# 	"#{params["guess"]} is higher than #{number}"
# end