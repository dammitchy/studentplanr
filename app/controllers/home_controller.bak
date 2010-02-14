class HomeController < ApplicationController
  
  def index
    @token = params[:token]
    
    client = GData::Client::DocList.new
    client.authsub_token = params[:token] # extract the single-use token from the URL query params
    session[:token] = client.auth_handler.upgrade()
    client.authsub_token = session[:token] if session[:token]
    

# need to scrape the location of the 302 Redirect that we get as response
# then use that to get at the actual calendars xml
 @headers client.get("http://www.google.com/calendar/feeds/default/allcalendars").headers


  end
  
  def home    
    scope = 'http://www.google.com/calendar/feeds/'
    next_url = 'http://studentplanr.heroku.com/home/'
    secure = false  # set secure = true for signed AuthSub requests
    sess = true
    @authsub_link = GData::Auth::AuthSub.get_url(next_url, scope, secure, sess)
  end
  
end
