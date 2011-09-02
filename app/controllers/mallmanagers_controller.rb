class MallmanagersController < ApplicationController
  
  layout "user"
  
  #before_filter :authenticate
  
  
  # GET /mallmanagers
  # GET /mallmanagers.xml
  def index
    @mallmanagers = Mallmanager.all
    respond_to do |format|
      format.js
    end
  end

  # GET /mallmanagers/1
  # GET /mallmanagers/1.xml
  def show
    @mallmanager = Mallmanager.find(params[:id])
  end

  # GET /mallmanagers/new
  # GET /mallmanagers/new.xml
  def new
    @mallmanager = Mallmanager.new
    respond_to do |format|
      format.js # new.html.erb
    end
  end

  # GET /mallmanagers/1/edit
  def edit
    @mallmanager = Mallmanager.find(params[:id])
    @mallmanagers = Mallmanager.all
     respond_to do |format|
     format.js
    end
  end

  # POST /mallmanagers
  # POST /mallmanagers.xml
  def create
    @mallmanager = Mallmanager.new(params[:mallmanager])
       if @mallmanager.save
      flash[:notice] = 'Mall Manager was successfully created.'
      @mallmanagers = Mallmanager.all
      responds_to_parent do
        render :action => 'index'
      end
    else
      p @mallmanager.errors.full_messages
        responds_to_parent do
        render :action => 'new'
       end
    end
  end

  # PUT /mallmanagers/1
  # PUT /mallmanagers/1.xml
  def update
    @mallmanager = Mallmanager.find(params[:id])
        if @mallmanager.update_attributes(params[:mallmanager])
        flash[:notice] = 'Mallmanager was successfully updated.' 
        @mallmanagers = Mallmanager.all
        responds_to_parent do |format|
        render :action => 'index'
        end
      else
        responds_to_parent do
        flash[:notice] = "There was an error while updating the Mall Manager information."
        render :action => 'new'
      end
    end
  end

  # DELETE /mallmanagers/1
  # DELETE /mallmanagers/1.xml
  def destroy
    @mallmanager = Mallmanager.find(params[:id])
    @mallmanager.destroy
     flash[:notice] = 'Mall manager delected successfully.'
       @mallmanagers = Mallmanager.all
      render :action => 'index'
   end
end
