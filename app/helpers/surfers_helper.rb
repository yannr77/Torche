module SurfersHelper
  
  def input_checkbox_boards board, surfer
  check = board.surfers.include?(surfer) ? "checked='checked'" : ""
  	"<input type='checkbox' name='boardsss[#{board.id}]' #{check} />".html_safe
  end
  
end
