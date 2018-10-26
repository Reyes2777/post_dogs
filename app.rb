require "sinatra"

dogs= []

get "/dogs" do
    @dogs = dogs
    erb :index
end

post "/dogs" do
 dogs.push(params["dog"])
 redirect "/dogs"
end
