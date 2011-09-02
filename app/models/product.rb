class Product < ActiveRecord::Base

   has_attached_file :image, :styles => {:thumb => "50x50"}
   
   has_one :lifestyle
   
  validates :name, :uniqueness => true, :presence => true, :length => {:maximum => 20}
  validates :description, :presence => true, :length => {:maximum => 160}
  validates :image, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  
  #validates :image, :format => { :with => %r{\.(gif|jpg|png)$}}

end
