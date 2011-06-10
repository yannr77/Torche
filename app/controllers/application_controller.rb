class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :last_time_visited, :get_name, :time_now

  def index
    @title = "Beg an Dorchenn"
  end
  
  def surf
    @title = "Surf"
  end
  
  def photos
    @title = "Photos"
  end

  # in ApplicationController
  def current_ability
    @current_ability ||= Ability.new(current_surfer)
  end
  
  protected 

  def get_name
    @name = params[:name]
  end
  
  def last_time_visited
     can? :manage, :all
    if current_surfer
      @time_since_last_connection = Time.now - (current_surfer.updated_at)
    else
      @time_since_last_connection = "Connectez-vous"
    end
    session[:last_time] = Time.now
  end
  
  def time_now
    @time = Time.now
  end
  
end
