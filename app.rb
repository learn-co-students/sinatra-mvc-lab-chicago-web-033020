require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
  # post '/pig' do
    # text_from_user = params[:user_text]
    piglatinize = PigLatinizer.new
    @pig_text = piglatinize.piglatinize(params[:user_phrase])
    erb :piglatinize
    # erb :pig

  end
end