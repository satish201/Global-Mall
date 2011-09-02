#this file is not in use of current application

class Retailer < ActiveRecord::Base
  
   attr_accessor :password 
   attr_accessible :username, :password
  
  acts_as_authentic do |config|
# Add custom configuration options here.
  config.crypto_provider = Authlogic::CryptoProviders::MD5
  end
  
  validates :username, :presence => true
  
  
end
