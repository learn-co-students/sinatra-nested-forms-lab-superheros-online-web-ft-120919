# require '../../config/environment'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do
    
    erb :super_hero
  end
  
  post '/teams' do
    @team = Team.new(params[:team][:name], params[:team][:motto])

      @hero_1 = SuperHero.new(params[:team][:heroes][0][:name], params[:team][:heroes][0][:power], params[:team][:heroes][0][:bio])
      @hero_2 = SuperHero.new(params[:team][:heroes][1][:name], params[:team][:heroes][1][:power], params[:team][:heroes][1][:bio])
      @hero_3 = SuperHero.new(params[:team][:heroes][2][:name], params[:team][:heroes][2][:power], params[:team][:heroes][2][:bio])
      #binding.pry

      @team.add_hero(@hero_1)
      @team.add_hero(@hero_2)
      @team.add_hero(@hero_3)

      @heroes = @team.heroes 
    erb :team
  end    
end