class MainController < ApplicationController
  def index
    @year = params[:year]
    if @year.blank? then
      @year = Date.today.year
    end
    @families = Family.all
  end
end
