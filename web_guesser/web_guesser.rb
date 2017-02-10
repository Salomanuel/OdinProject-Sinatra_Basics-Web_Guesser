require 'sinatra'
require 'sinatra/reloader'


@@number  	 = rand(100)
@@attempts = 5

get '/' do
	guess 	= params["guess"].to_i
	message = "#{check_guess(guess, @@number)}"
	erb :index, :locals => {:number => @@number, :message => message, :guess => guess}
end


def check_guess(guess, number)
	return new_game if @@attempts <= 0
	case  
		when guess <  number 	then return "the guess is too low"
		when guess >  number	then return	"the guess is too high"
		when guess == number 	then return "the guess is correct! the number was #{number}"
	end
	@@attempts -= 1
end

def new_game
	@@number   = rand(100)
	@@attempts = 5
	return "too many attempts, a new number has been generated"
end

# if params["guess"] > number
# 	"#{params["guess"]} is higher than #{number}"
# end