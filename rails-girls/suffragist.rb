require "sinatra"
require "sinatra/reloader"

get "/" do
	@title = "voting page"
	erb :index
end

Choices = {
	1 => "uno",
	2 => "due",
	3 => "tre"
}