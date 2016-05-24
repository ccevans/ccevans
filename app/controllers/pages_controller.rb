class PagesController < ApplicationController
  def home
  	@projects = Project.all.order('order DESC')
  end


end
