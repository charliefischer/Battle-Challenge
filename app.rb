require 'sinatra/base'
require './lib/player.rb'

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
    p "/play"
    p $player_1
    p $player_2
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    p @player_1
    p @player_2
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :attack
  end

  run! if app_file == $0

end
