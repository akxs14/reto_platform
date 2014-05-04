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

# get '/javascripts/applications.js' do
#   coffee :application
# end


