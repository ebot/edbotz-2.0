require 'sinatra'

# index
get '/' do
  haml :index
end

get '/4for4' do
  haml '4for4'.to_sym
end

get '/xmas-2009' do
  haml :'xmas-2009'.to_sym, :layout => false
end

# SASS stylesheets
get '/stylesheets/application.css' do
  header 'Content-Type' => 'text/css; charset=utf-8'
  sass :application
end

get '/stylesheets/iphone.css' do
  header 'Content-Type' => 'text/css; charset=utf-8'
  sass :iphone
end

get '/stylesheets/print.css' do
  header 'Content-Type' => 'text/css; charset=utf-8'
  sass :print
end