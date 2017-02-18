require "sinatra"
require "sinatra/reloader"

get "/" do
	@title = "voting page"
	erb :index
end

post "/cast" do
	@title = "casting page"
	@vote  = params["vote"]
	erb :cast
end

Choices = {
	1 => "uno",
	2 => "due",
	3 => "tre"
}