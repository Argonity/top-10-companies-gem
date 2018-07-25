class Top10Companies::Scraper

  #Setting the url in a constant variable since I will be scraping just one site.
  BASE_URL = "https://www.greatplacetowork.com/best-workplaces/100-best/2018"

  def self.scrape_companies
    doc = Nokogiri::HTML(open(BASE_URL))

    doc.css('#list-detail-left-column').each do |companies|
      companies.css('.company').each do |company_info|
        name = company_info.css('a.title').text.strip
        url = company_info.css('a.title').attribute('href').value
        industry = company_info.css('.industry').text.strip
      binding.pry
    end
    end
  end

end

# -> Returned Empty Array:
# -> doc.css('#list-detail-left-column.col-xs-12 col-md-8')
# -> company_info.css('.col-xs-12 col-md-8')
# -> company_info.css('.row company small no-margin-top list-filter-show')
# -> company_info.css('.col-md-5 col-xs-12 company-text')
# -> company_info.css('.row company small no-margin-top list-filter-show.col-md-5 col-xs-12 company-text')
# -> company_info.css('.row company small no-margin-top list-filter-show.col-md-5 col-xs-12 company-text a')
# -> company_info.css('.row company small no-margin-top list-filter-show.col-md-5 col-xs-12 company-text a title')
