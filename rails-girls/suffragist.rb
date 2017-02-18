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

get "/results" do
	@title = "results"
	@votes = { 1 => 7, 2 => 5, 3 => 3 }
	erb :results
end

Choices = {
	1 => "uno",
	2 => "due",
	3 => "tre"
}