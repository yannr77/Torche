module ApplicationHelper
  
  def say_hello
    "Bonjour #{@name}" if @name 
  end
  
  def menu_link_to name, link
    link_to "#{name} :", link 
  end
  
end
