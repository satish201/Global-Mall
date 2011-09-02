class LifestylesController < ApplicationController
  
 
  #before_filter :require_user_admin ,:except=>["index", "show", "lifestyleslist"]

  
  def index
    p "I am in index of products"
    @lifestyles = Lifestyle.all
    @products = Product.all
    respond_to do |format| 
    format.js
    end
  end
  

  def show
    @lifestyle = Lifestyle.find(params[:id])
    @product = Product.find(@lifestyle.product_id)
  end

  
  def create
    @lifestyle = Lifestyle.new(params[:lifestyle])
    @lifestyle.product_id = params[:product_id]
    @products = Product.all

    if @lifestyle.save
p "The Lifestyle has been Successfully saved."      
      flash[:notice] = "Successfully created post."
      @lifestyles = Lifestyle.all
      responds_to_parent do
p "I am in the responds_to_parent part of create"           
        render :action => 'index'
      end
    else
        responds_to_parent do
p "I am in the responds_to_parent part of create"           
        render :action => 'new'
      end
    end
   end
  
  def edit
    p "I am in the edit of Lifestyles"
    @product = Product.find(product_id)
    @lifestyle = Lifestyle.find(params[:id])
    #render :template=> new.js.erb
    respond_to do |format| 
    format.js
    end
  end
  
  def destroy
    @lifestyle = Lifestyle.find(params[:id])
    @lifestyle.destroy
    flash[:notice] = "Lifestyle Deleted successfully"
    @lifestyles = Lifestyle.all
    @products = Product.all
    render :action => 'index'
  end
  
  def update
p "I am in update of products"
    @lifestyles = Lifestyle.all
    @lifestyle = Lifestyle.find(params[:id])
    @lifestyle.product_id = params[:product_id]
    @products = Product.all
     
    if @lifestyle.update_attributes(params[:lifestyle])
      flash[:notice] = "Successfully created post."
#      render :action => 'products_index'
      responds_to_parent do
p "I am in the responds_to_parent part of create"           
        render :action => 'index'
      end
    else
      flash[:notice] = "There was an error while updating the product information"
#      render :action => 'new'
        responds_to_parent do
p "I am in the responds_to_parent part of create"           
        render :action => 'edit'
      end
    end
  end
  

  def new
    p "I am in the new of products"
    respond_to do |format| 
    format.js
    end
  end
  

  def lifestyleslist
    @lifestyles = Lifestyle.order("name")#.page(params[:page]).per(28)
    @products = Product.order("name")#.page(params[:page]).per(28)
    @product = Product.first
    @lifestyle = Lifestyle.last
p "It shud work"    
p @product.lifestyle.description

  end

  def product_index
    @products = Product.all
    respond_to do |format| 
     format.js
    end
  end
  

  def check_product
    @lifestyle = Lifestyle.find(:first, :conditions => ["product_id = ?", params[:product_id]])  
    @product = Product.find(params[:product_id])

    if (@lifestyle.nil?)
      flash[:notice] = "Add Lifestyle Description ..."
      @lifestyle = Lifestyle.new
      render :new
    else
      render :edit
    end
  end
end
