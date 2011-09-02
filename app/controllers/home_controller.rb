class HomeController < ApplicationController
  
  def index  
  end

  def productslist
    @products = Product.all
  end
end
