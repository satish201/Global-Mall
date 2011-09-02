class MallmanagerSession < Authlogic::Session::Base
  
   def to_key
    #self.keys.to_a 
    new_record? ? nil : [ self.send(self.class.primary_key) ]
  end
  
  def persisted?
    false
  end
end
