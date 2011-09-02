class User < ActiveRecord::Base

   #attr_accessor :password 
   
   #attr_accessible :username, :password, :password_confirmation
   
   acts_as_authentic do |c|
    c.validate_email_field = false
    end

   #validates :username, :presence => true

end
