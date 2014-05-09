#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'

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

