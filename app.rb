require 'sinatra/base'
require './weather'

class App < Sinatra::Base
    get "/"  do
        "Hello Nginx Unicorn Web App World"
    end    
end

class CurrentWeatherController < Sinatra::Base
    APIKEY = "xxxxxxxx"
    currentWether = Weather.new(APIKEY)
    get "/:name" do
      "<h1>現在の天気を返すミニアプリです。</h1>"
      "<h1>今の#{params[:name]}の天気は" + currentWether.get_current_weather(params[:name]) +"</h1>"
    end
  end 
