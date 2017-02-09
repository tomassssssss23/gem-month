require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/gem' do 
  month=params[:month]
  @result=choose_gem(month)
  erb :results
end
end