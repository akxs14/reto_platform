require 'data_mapper'

class Campaign
  include DataMapper::Resource

  property :id,         Serial
  property :name,       String
  property :email,      String
  property :password,   String
  property :address,    String
  property :country,    String
  property :status,     String
  property :joined,     Timestamp
  property :last_login, Timestamp
end