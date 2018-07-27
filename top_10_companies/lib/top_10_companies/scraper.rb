class Top10Companies::Scraper

  BASE_URL = "https://www.greatplacetowork.com/best-workplaces/100-best/2018"

  def self.scrape_companies
    doc = Nokogiri::HTML(open(BASE_URL))

    doc.css('#list-detail-left-column').each do |companies|
      companies.css('.company')[0..9].each do |company_info|
        name = company_info.css('a.title').text.strip
        url = company_info.css('a.title').attribute('href').value
        industry = company_info.css('.industry').text.strip
      Top10Companies::Company.new(name, url)
    end
    end
  end

  def self.scrape_company_details(company)
    url = company.url
    doc = Nokogiri::HTML(open(url))

    company.industry = doc.css('.intro table td')[1].text.strip
    company.revenue = doc.css('.intro table td')[7].text.strip
    company.employee_rating = doc.css('.company_rating_text p').text.strip
    company.description = doc.css('.company_right p')[1].text
  end

end
