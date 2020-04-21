require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @analyzed_words = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

end