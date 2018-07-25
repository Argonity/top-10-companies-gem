class Top10Companies::CLI

  def welcome
    puts ""
    puts "*****************************************************************"
    puts "Welcome to the Top 10 list of Best Companies to Work For in 2018!"
    puts "*****************************************************************"
    puts ""

    Top10Companies::Scraper.scrape_companies
    main_menu
  end

  def main_menu
    puts "DID YOU KNOW?"
    puts "-------------"
    puts "Employees who say they have a great place to work were four times"
    puts "more likely to give extra to get the job done."
    puts "-----------------------------------------------------------------"
    puts ""
    puts "Here are the Top 10 Companies to Work For in 2018:"
    puts ""
    companies = Top10Companies::Company.all

    companies.each.with_index(1) do |company, index|
      puts "(#{index}) #{company.name.upcase}"
    end

    puts ""
    puts "Please input 1-10 to learn more details about a company."
    puts ""
    puts "-----------------------------------------------------------------"

    input = gets.strip
    index = input.to_i - 1

    company = Top10Companies::Company.all[index]
  end

end
