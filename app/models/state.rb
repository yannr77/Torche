class State < ActiveRecord::Base

  has_many :surfers  

  def name_capitalize
    "#{name.capitalize} (#{surfers.count} surfers)"
  end
    
end
