class Top10Companies::CLI

  def welcome
    puts ""
    puts "-----------------------------------------------------------------"
    puts "Welcome to the Top 10 list of Best Companies to Work For in 2018!"
    puts "-----------------------------------------------------------------"
    puts ""

    Top10Companies::Scraper.scrape_companies

  end


end
