require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_1_health = $player_1.health
    @player_2 = $player_2.name
    @player_2_health = $player_2.health
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_1_health = $player_1.health
    @player_2 = $player_2.name
    Game.new.attack($player_2)
    @player_2_health = $player_2.health
    erb :attack
  end

  run! if app_file == $0

end
