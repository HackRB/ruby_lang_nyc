class EventsController < ApplicationController
  def index
    @events = [
      {
        date: Time.parse("2026-7-15"),
        category: "Talk",
        title: "Concurrency in Ruby 3.3 — Ractors, Fibers & Beyond",
        location: "ThoughtWorks NYC, Midtown"
      },
      {
        date: Time.parse("2026-8-05"),
        category: "Workshop",
        title: "Building Fast APIs with Grape + Dry-rb",
        location: "GitHub HQ, Manhattan"
      },
      {
        date: Time.parse("2026-8-19"),
        category: "Talk",
        title: "Rails 8 and the New Deployment Story",
        location: "Shopify NYC, SoHo"
      },
      {
        date: Time.parse("2026-9-09"),
        category: "Hybrid",
        title: "Hotwire Deep Dive: Turbo Streams & Morphing",
        location: "Remote + Pivotal Labs, NYC"
      },
      {
        date: Time.parse("2026-9-23"),
        category: "Talk",
        title: "Writing Readable Ruby — A Linting Retrospective",
        location: "WeWork Fulton Center"
      },
      {
        date: Time.parse("2026-10-07"),
        category: "Social",
        title: "From Monolith to Microservices (and Back Again)",
        location: "Recurse Center, Brooklyn"
      }
    ]

    render "index"
  end
end
