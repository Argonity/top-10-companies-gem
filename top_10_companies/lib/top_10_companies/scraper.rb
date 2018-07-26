class Top10Companies::Scraper

  #Setting the url in a constant variable since I will be scraping just one site.
  BASE_URL = "https://www.greatplacetowork.com/best-workplaces/100-best/2018"

  def self.scrape_companies
    doc = Nokogiri::HTML(open(BASE_URL))

    doc.css('#list-detail-left-column').each do |companies|
      companies.css('.company')[0..9].each do |company_info|
        name = company_info.css('a.title').text.strip
        url = company_info.css('a.title').attribute('href').value
        industry = company_info.css('.industry').text.strip
      Top10Companies::Company.new(name, url, industry)
    end
    end
  end

  def self.scrape_company_details(company)
    url = company.url
    detail_doc = Nokogiri::HTML(open(url))
    detail_doc.css('.company_right p')[1]
    description = detail_doc.css('.company_right p')[1].text
    
    binding.pry
  end

end
