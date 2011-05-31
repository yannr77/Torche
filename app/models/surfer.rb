class Surfer < ActiveRecord::Base
  
    validates :email, :presence => true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    
    validates :name, :presence => true
    validates :firstname, :presence => true
end
