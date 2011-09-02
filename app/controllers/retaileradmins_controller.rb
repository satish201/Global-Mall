class RetaileradminsController < ApplicationController
  
  layout "user"
  # GET /retaileradmins
  # GET /retaileradmins.xml
  #before_filter :authenticate
  
  def index
    @retaileradmins = Retaileradmin.all
    respond_to do |format|
      format.js
    end
  end

  # GET /retaileradmins/1
  # GET /retaileradmins/1.xml
  def show
    @retaileradmin = Retaileradmin.find(params[:id])
  end

  # GET /retaileradmins/new
  # GET /retaileradmins/new.xml
  def new
    @retaileradmin = Retaileradmin.new
    respond_to do |format|
      format.js 
    end
  end

  # GET /retaileradmins/1/edit
  def edit
    @retaileradmin = Retaileradmin.find(params[:id])
    @retaileradmins = Retaileradmin.all
    respond_to do |format|
      format.js
    end
  end

  # POST /retaileradmins
  # POST /retaileradmins.xml
  def create
    @retaileradmin = Retaileradmin.new(params[:retaileradmin])
    if @retaileradmin.save
        flash[:notice] = 'Retaileradmin was successfully created.'
        @retaileradmins = Retaileradmin.all
        #@retaileradmin = Retaileradmin.new
        responds_to_parent do 
          render :action => 'index'
      end
      else
        p @retaileradmin.errors.full_messages
        responds_to_parent do
          render :action => 'new'
      end
    end
  end

  # PUT /retaileradmins/1
  # PUT /retaileradmins/1.xml
  def update
    @retaileradmin = Retaileradmin.find(params[:id])
      if @retaileradmin.update_attributes(params[:retaileradmin])
        flash[:notice] = 'Retaileradmin was successfully updated.'
        @retaileradmins = Retaileradmin.all
        responds_to_parent do |format|
          render :action => 'index'
        end
      else
        responds_to_parent do 
           flash[:notice] = "There was an error while updating the Retailer information."
           render :action => 'new'
      end
    end
  end

  # DELETE /retaileradmins/1
  # DELETE /retaileradmins/1.xml
  def destroy
    @retaileradmin = Retaileradmin.find(params[:id])
    @retaileradmin.destroy
    flash[:notice] = 'Retailer deleted successfully.'
      @retaileradmins = Retaileradmin.all
      render :action => 'index'
   end
end
