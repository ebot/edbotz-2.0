#!/usr/bin/env ruby
require 'sinatra'
require 'sass'
require 'haml'

# index
get '/' do
  haml :index
end

get '/4for4' do
  haml '4for4'.to_sym
end

get '/redesigned' do
  haml :redesigned, :layout => false
end

get '/xmas-2009' do
  haml :'xmas-2009'.to_sym, :layout => false
end

get '/xmas-2010' do
  haml :'xmas-2010'.to_sym, :layout => false
end

# SASS stylesheets
get '/stylesheets/application.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :application
end

get '/stylesheets/iphone.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :iphone
end

get '/stylesheets/print.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :print
end

get '/stylesheets/redesigns.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :redesigned
end