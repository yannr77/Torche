class Surfer < ActiveRecord::Base
    belongs_to :state
  
    validates :name, :presence => true
    validates :firstname, :presence => true
    validates :email, :presence => true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :tel,  :presence => true
    validates_format_of :tel, :with => /0\d{1}\.?(\d{2}\.?){4}/

end
