class HomeController < ApplicationController
  def index
    @events = Event.all
    @companies = Company.all

    render "index"
  end
end
