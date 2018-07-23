class CLI

  def welcome
    puts "Welcome to the Top 10 list of Best Companies to Work For in 2018!"

    Scraper.scrape_companies

  end


end
