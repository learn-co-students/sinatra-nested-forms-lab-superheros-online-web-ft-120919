require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

        erb :team
    end

    post '/teams' do
        @tn = params["team"]["name"]
        @tm = params["team"]["motto"]

        # hero 1
        @h1n = params["team"]["heroes"][0]["name"]
        @h1p = params["team"]["heroes"][0]["power"]
        @h1b = params["team"]["heroes"][0]["bio"]

        # hero 2
        @h2n = params["team"]["heroes"][1]["name"]
        @h2p = params["team"]["heroes"][1]["power"]
        @h2b = params["team"]["heroes"][1]["bio"]

        # hero 3
        @h3n = params["team"]["heroes"][2]["name"]
        @h3p = params["team"]["heroes"][2]["power"]
        @h3b = params["team"]["heroes"][2]["bio"]

        erb :super_hero
    end

end
