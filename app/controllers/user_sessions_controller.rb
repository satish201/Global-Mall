class UserSessionsController < ApplicationController
  layout 'user'
  
   before_filter :require_user_admin, :except=>["new", "create"]
    
  # GET /user_sessions/new
  # GET /user_sessions/new.xml
  def new
      if current_user
        redirect_to '/admin'
      else
        @user_session = UserSession.new
        respond_to do |format|
          format.html # new.html.erb
          format.xml { render :xml => @user_session }
        end
      end
  end

  # POST /user_sessions
  # POST /user_sessions.xml
  def create
    @user_session = UserSession.new(params[:user_session])
        respond_to do |format|
        if @user_session.save        
          p "i m in save***"
          p @user_session
        format.html { redirect_to('/admin' , :notice => 'Login Successful') }
        format.xml { render :xml => @user_session, :status => :created, :location => @user_session }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @user_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_sessions/1
  # DELETE /user_sessions/1.xml
  def destroy
    #@user_session[:user_id] = nil
    @user_session = UserSession.find
    @user_session.destroy

    respond_to do |format|
      format.html { redirect_to(root_url, :notice => 'Goodbye!') }
      format.xml { head :ok }
    end
  end
end
