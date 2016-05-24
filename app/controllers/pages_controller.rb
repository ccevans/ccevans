class PagesController < ApplicationController
  def home
  	@projects = Project.all
  	@currentupdate = Currentupdate.last
  end


end
