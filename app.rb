require "rubygems"
require "sinatra"
require "erb"

enable :sessions

get "/" do
	session[:name] = ""
	erb :test
end

get "/:name" do
	session[:name] += params[:name] + "<br>"
	@name = session[:name]
	erb :test
end

post "/form" do
	@name = "#{params[:message]}"
	redirect to("/#{@name}")
end 