class RetailersController < ApplicationController
 layout 'user'
 
  before_filter :authenticate
 
 
  def index
      
  end
  
  
  def new_request_form
    
  end
  
  def notify_gm
    Notifier.email_to_gm(params[:businesstype],params[:businessname], params[:city], params[:state], params[:streetaddress], params[:zipcode],params[:fullname], params[:email], params[:phonenumber], params[:inside], params[:outside], params[:website], params[:name], params[:description], params[:image], params[:price], params[:message]).deliver
    flash.now[:notice] = "Successfully sent a message to Gm."
    render :action => 'index'
    
  end
end
