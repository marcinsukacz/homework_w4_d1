require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game')
also_reload('./models/*')

get '/play/:hand1/:hand2' do

  game = Game.new(params[:hand1], params[:hand2])
  @result = game.who_wins?()
  erb(:result)

end

get '/welcome' do

  erb(:welcome)

end


get '/play' do

  erb(:play)

end
