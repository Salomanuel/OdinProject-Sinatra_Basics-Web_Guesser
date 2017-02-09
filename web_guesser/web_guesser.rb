require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"Hello, World! #{rand(100)} times! @"
end