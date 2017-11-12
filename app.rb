require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/'  do
      erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do
      @name = params[:pirate]["name"]
      @height = params[:pirate]["height"]
      @weight = params[:pirate]["weight"]
      
      @ship_name_1 = params[:pirate]["ships"][0]["name"]
      @ship_type_1 = params[:pirate]["ships"][0]["type"]
      @ship_booty_1 = params[:pirate]["ships"][0]["booty"]
      @ship_name_2= params[:pirate]["ships"][1]["name"]
      @ship_type_2= params[:pirate]["ships"][1]["type"]
      @ship_booty_2 = params[:pirate]["ships"][1]["booty"]
      erb :show
    end


  end
end
