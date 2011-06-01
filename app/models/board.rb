class Board < ActiveRecord::Base

  has_many :board_surfers
  has_many :surfers, :through => :board_surfers

end
