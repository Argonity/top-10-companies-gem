class Top10Companies::Scraper

  #Setting the url in a constant variable since I will be scraping just one site.
  BASE_URL = "https://www.greatplacetowork.com/best-workplaces/100-best/2018"

  def self.scrape_companies
    doc = Nokogiri::HTML(open(BASE_URL))

    doc.css('.row').each do |company_doc|
    binding.pry
    end
  end

end
