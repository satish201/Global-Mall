class ProductsController < ApplicationController
 
 layout "user"
  
 #before_filter :require_user_admin, :except => ["index", "show", "search"]
  # GET /products
  # GET /products.xml
  def index
    @products = Product.all
    p"I am index *****************"
    respond_to do |format|
    format.js
    end
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    @product = Product.find(params[:id])
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new
    p "im a new product********"
    respond_to do |format|
      format.js
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    @products = Product.all
   
    p "i m in edit **********"
   # p @product
  #  p "**********************************************************************************************"
    respond_to do |format|
      format.js 
    end
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])
    
      if @product.save
        flash[:notice] = "Product was successfully created."
        @products = Product.all
        p "i m in create************"
        #p @products
        @product = Product.new
        responds_to_parent do 
          p "Im in index*************************************"
          render :action => 'index'
          p "Im in new*************************************"
        end
      else
        p "I am in the error part of product create "      
p @product
p "*******************************************"
p @product.errors.full_messages
p "*******************************************"
        responds_to_parent do
          render :action => 'new'
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])
         if @product.update_attributes(params[:product])
       flash[:notice] = "Product was successfully updated."
        @products = Product.all
        responds_to_parent do
          p "im to update***************************************************" 
          render :action => 'index'
        end
      else
        responds_to_parent do
          flash[:notice] = "There was an error while updating the product information."
          render :action => 'new'
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    p "I am in Delete of Product"
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product deleted successfully."
    @products = Product.all
    render :action => 'index'
  end

  def search
    @product = Product.find(params[:id])
    @find = params[:term]
    @area = @product.name
    @description = @product.description
    #@area += ", USA"
  end
end
