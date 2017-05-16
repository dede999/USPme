class ApiController < ApplicationController
  def index
    respond_to do |format|
      msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
      format.json  { render :json => Course.all }
      format.html{}
    end
  end

  def debug
  end
end
