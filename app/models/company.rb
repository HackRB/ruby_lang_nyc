class Company
  def self.all
    CSV.read(Rails.root.join("lib", "seeds", "companies.csv"), headers: true).map(&:to_h).map(&:with_indifferent_access)
  end
end
