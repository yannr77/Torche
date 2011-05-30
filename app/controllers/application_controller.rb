class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
    @title= "Beg an Dorchenn"
  end
  
end
