class HomeController < ApplicationController
  def index
    @companies = Company.all
    @people = Person.all
    @events = Event.all


    render "index"
  end
end
