require 'sinatra/base'
require_relative './models/setting'

class Thermostat < Sinatra::Base

  enable :sessions

  get '/' do
    redirect to '/index'
  end

  post '/save' do
    currenttemperature = params[:currenttemperature]
    powersaving = params[:powersaving]
    city = params[:city]
    setting = Setting.create(current_temperature: currenttemperature, powersaving: powersaving, city: city)
  end

  get '/settings' do
    @settings = Setting.last
    p @settings
  end

  get '/index' do
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
