require 'data_mapper'

class Campaign
  include DataMapper::Resource

  property :id,              Serial
  property :title,           String
  property :start_date,      Date
  property :end_date,        Date
  property :monetary_budget, Numeric
  property :action_budget,   Integer
  property :status,          String
  property :currency_id,     Integer
  property :type_id,         Integer
  property :user_id,         Integer
end

DataMapper.finalize
