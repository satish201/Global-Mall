class UserSession < Authlogic::Session::Base
  #attr_accessor :password, :roll
  
  #attr_accessor :username, :password, :password_confirmation, :roll
  
  def to_key
     new_record? ? nil : [ self.send(self.class.primary_key) ]
  end
  
  def persisted?
    false
  end
end

