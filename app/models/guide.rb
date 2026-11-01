class Guide
  Entry = Data.define(:slug, :title, :description)

  ALL = [
    Entry.new(
      slug: "installing-ruby",
      title: "Installing Ruby",
      description: "Install a working Ruby on macOS or Linux with mise."
    )
  ].freeze

  def self.all
    ALL
  end

  def self.find(slug)
    ALL.find { |guide| guide.slug == slug.to_s }
  end
end
