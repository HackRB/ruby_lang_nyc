class Company
  def self.all
    [
      { name: "Shopify",        role: "E-Commerce Platform",   url: "https://shopify.com" },
      { name: "GitHub",         role: "Dev Tools & Open Source", url: "https://github.com" },
      { name: "Kickstarter",    role: "Crowdfunding",           url: "https://kickstarter.com" },
      { name: "Squarespace",    role: "Website Builder",        url: "https://squarespace.com" },
      { name: "Etsy",           role: "Handmade Marketplace",   url: "https://etsy.com" },
      { name: "Stripe",         role: "Payments Infrastructure", url: "https://stripe.com" },
      { name: "ThoughtWorks",   role: "Tech Consultancy",       url: "https://thoughtworks.com" },
      { name: "Recurse Center", role: "Coding Retreat",         url: "https://recurse.com" },
      { name: "Braintree",      role: "Payment Solutions",      url: "https://braintreepayments.com" }
    ]
  end
end
