class RetaileradminSessionsController < ApplicationController
  layout 'user'
 # before_filter :authenticate #, :only => :destroy
  
  #new session
  def new
    if current_retaileradmin
      
      redirect_to '/retailers'
    else
      @retaileradmin_session = RetaileradminSession.new
      respond_to do |format|
        format.html # new.html.erb
        format.xml { render :xml => @retaileradmin_session }
      end
    end
    
  end
  
  #create new session for retailer
  def create
    @retaileradmin_session = RetaileradminSession.new(params[:retaileradmin_session])
    respond_to do |format|
    if @retaileradmin_session.save
      format.html { redirect_to('/retailers' , :notice => 'Login Successful') }
        format.xml { render :xml => @retaileradmin_session, :status => :created, :location => @retaileradmin_session }
       else
        format.html { render :action => "new" }
        format.xml { render :xml => @retaileradmin_session.errors, :status => :unprocessable_entity }
    end
   end 
 end
        
   
  
  #destroy current session
  
  def destroy
    @retailer_session = RetaileradminSession.find
    @retailer_session.destroy

    respond_to do |format|
      format.html { redirect_to(root_url, :notice => 'Goodbye!') }
      format.xml { head :ok }
  end
 end
end
