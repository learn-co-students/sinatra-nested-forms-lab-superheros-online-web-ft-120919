require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    team_arr = params["team"]
    @team = Team.new(team_arr["name"], team_arr["motto"])
    @heroes = []
    team_arr["members"].each do |hero|
      @heroes << Superhero.new(hero["name"], hero["power"], hero["bio"], @team)
    end
    erb :team
  end
end
