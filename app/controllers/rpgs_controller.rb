class RpgsController < ApplicationController
  
  def index
    session[:counter] = 0 if !session[:counter].present?
  end
  def farm
  	session[:counter] += rand(10..20)
  	redirect_to action: 'index' 
  end

  def cave
  	session[:counter] += rand(5..10)
  	redirect_to action: 'index' 
  end

  def casino
  	session[:counter] += rand(-50..50)
  	redirect_to action: 'index' 
  end

  def house
  	session[:counter] += rand(2..5)
  	redirect_to action: 'index' 
  end

  def activities
  end
  

end
