class HomeController < ApplicationController
  def index
    @companies = Company.all
    @events = Event.all


    render "index"
  end
end
