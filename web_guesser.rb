require 'sinatra'

get '/' do
	"The secret number is #{rando}"
end

def rando
	return rand(100)
end