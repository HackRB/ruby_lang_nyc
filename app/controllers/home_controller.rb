class HomeController < ApplicationController
  def index
    @people = Person.all
    @companies = Company.all
    @events = Event.all


    render "index"
  end
end
