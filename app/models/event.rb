class Event
  def self.all
    CSV.read(Rails.root.join("lib", "seeds", "events.csv"), headers: true).map(&:to_h).map(&:with_indifferent_access)
  end
end
