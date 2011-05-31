class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_time, :get_name

  def index
    @title = "Beg an Dorchenn"
  end
  
  def surf
    @title = "Surf"
  end
  
  def photos
    @title = "Photos"
  end


  protected 

  def get_name
    @name = params[:name]
  end
  
  def set_time
    @time = Time.now.strftime("%d-%m-%Y %H:%M")
  end

end
