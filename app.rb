#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'
require 'data_mapper'

DataMapper.setup(:default, 'postgres://localhost/app')
DataMapper.finalize.auto_upgrade!

get '/' do
  redirect '/campaigns'
end

get '/campaigns' do
  slim :campaigns
end

get '/scripts/app.js' do
  coffee :app
end

get '/angular' do
  slim :angular
end

get '/angular2' do
  slim :angular2
end

get '/campaigns/user/:id' do
  puts "!!!!!!!!!!!!"
  "ok - #{params[:id]}"
end