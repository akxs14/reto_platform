#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'
require 'data_mapper'

require_relative 'lib/models'

DataMapper.setup(:default, 'postgres://angelos:akxs14@localhost/angelos')
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
  campaign = Campaign.get(params[:id].to_i)
  "ok - #{params[:id].to_i} - #{campaign.inspect}"
end

