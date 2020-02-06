require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    post '/teams' do
        @team = params[:team]
        @members = []
        params[:team][:members].each{|hash| @members << hash}
        puts @members
        erb :team
    end


end
