class Retaileradmin < ActiveRecord::Base
  #attr_accessor :password, :password_confirmation
  
  #attr_accessible :username, :password, :password_confirmation, :email
  
  #before_save :encrypt_password
  
   acts_as_authentic do |c|
    c.validate_email_field = false
    end
  
   #validates :username, :presence => true, :uniqueness => true 
   #validates :password, :presence => true
   
      
   #validates :email, :presence => true, :uniqueness => true
     
  
  
end
