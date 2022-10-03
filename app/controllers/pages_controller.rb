class PagesController < ApplicationController
  def home
    @projects = Project.all
    @tools
  end
end
