class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user, :current_user_session, :current_retaileradmin, :current_retaileradmin_session
  
  def require_user_admin
    if current_user
     # unless current_user.username == "admin"
        # flash[:notice] = "You must be logged as administrator to access this page"
        # redirect_to root_url
        # return false
      # end
     
      return true
    else
     
      flash[:notice] = "You must be logged as administrator to access this page"
      redirect_to root_url
      return false
     end
  end
  
  
  def authenticate
    if current_retaileradmin
      return true
    else
      flash[:notice] = "You must be logged as retailer to access this page"
      redirect_to root_url
     return false
    end
  end
  
  private
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
    
  end
  
  def current_retaileradmin
    return @current_retaileradmin if defined?(@current_retaileradmin)
    @current_retaileradmin = current_retaileradmin_session && current_retaileradmin_session.record
  end
    
    # def current_user_session
    # return @current_user_session if defined?(@def require_user_admin
    # if current_user
      # unless current_user.username == "admin"
# current_user_session )
    # @current_user_session = UserSession.find
  # end
  
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
       @current_user_session = UserSession.find
    end
    
  def current_retaileradmin_session
    return @current_retaileradmin_session if defined?(@current_retaileradmin_session)
   p "*************"
    @current_retaileradmin_session = RetaileradminSession.find 
    
  end
    
    
  
end