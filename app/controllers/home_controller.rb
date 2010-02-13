class HomeController < ApplicationController
  def index
    
  end
  
  def home
    scope = 'http://www.google.com/calendar/feeds/'
    next_url = 'http://studentplanr.heroku.com/home/'
    secure = false  # set secure = true for signed AuthSub requests
    sess = true
    @authsub_link = GData::Auth::AuthSub.get_url(next_url, scope, secure, sess)
  end
  
end
