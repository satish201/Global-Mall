class AdminController < ApplicationController
layout "user"  
 
 before_filter :require_user_admin
  
  
  
  def index
    @products = Product.all
  end

end
