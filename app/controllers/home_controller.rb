class HomeController < ApplicationController
  
  def index
    client.authsub_token = params[:token] # extract the single-use token from the URL query params
    session[:token] = client.auth_handler.upgrade()
    client.authsub_token = session[:token] if session[:token]
    
    @feed = client.get('http://docs.google.com/feeds/documents/private/full').to_xml
  end
  
  def home
    scope = 'http://www.google.com/calendar/feeds/'
    next_url = 'http://studentplanr.heroku.com/home/'
    secure = false  # set secure = true for signed AuthSub requests
    sess = true
    @authsub_link = GData::Auth::AuthSub.get_url(next_url, scope, secure, sess)
  end
  
end
