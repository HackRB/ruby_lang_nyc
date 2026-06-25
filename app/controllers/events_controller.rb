class EventsController < ApplicationController
  def index
    @events = {
      date: Time.parse("2026-7-15"),
      category: "Talk",
      title: "Concurrency in Ruby 3.3 — Ractors, Fibers & Beyond",
      location: "ThoughtWorks NYC, Midtown"
    }

    render "index"
  end
end
