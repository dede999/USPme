class PublicController < ApplicationController
  before_action :authenticate_user!
  
  def index
    
    @course = current_user.mycourses[0]
    
  end
  
  def contact
  end
  
  
  
end
