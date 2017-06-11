class PublicController < ApplicationController
  before_action :authenticate_user!
  
  def index
    
    
    
  end
  
  def contact
  end
  
  def course
    @course = current_user.courses[0]
  end
  
  
end
