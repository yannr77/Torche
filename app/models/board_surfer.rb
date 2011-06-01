class BoardSurfer < ActiveRecord::Base
    belongs_to :surfer
    belongs_to :board
end
