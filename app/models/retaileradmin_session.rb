class RetaileradminSession < Authlogic::Session::Base
  
  #attr_accessor :username, :password#, :password_confirmation
  
  #attr_accessible :username, :password#, :password_confirmation
  
  #validates :username, :presence => true
  #validates :password, :presence => true
  
  def to_key
    #self.keys.to_a 
    new_record? ? nil : [ self.send(self.class.primary_key) ]
  end
  
  def persisted?
    false
  end
end
