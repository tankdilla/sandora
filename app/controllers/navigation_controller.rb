class NavigationController < ApplicationController
	layout 'main2'
	
  def index
  end
  
  def home
  	render :layout => 'application'
  end

end
