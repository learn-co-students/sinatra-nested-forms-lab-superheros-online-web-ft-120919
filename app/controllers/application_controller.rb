require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :team
    end

    post '/teams' do 
        # binding.pry
        @team = params[:team][:members]
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @hero_name = []
        @hero_power =[]
        @hero_bio = []

        params[:team][:members].each do |hero|
            # Members.new(hero)
            @hero_name << hero[:name]
            @hero_power << hero[:power]
            @hero_bio << hero[:bio]
        end

        # @heros = Members.all

        erb :super_hero
    end


end
