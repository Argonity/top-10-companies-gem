class Top10Companies::CLI

  def welcome
    puts ""
    puts "*****************************************************************"
    puts "Welcome to the Top 10 list of Best Companies to Work For in 2018!"
    puts "*****************************************************************"
    puts ""
    puts "--------------------------DID YOU KNOW?--------------------------"
    puts "Employees who say they have a great place to work were four times"
    puts "more likely to give extra to get the job done."
    puts "-----------------------------------------------------------------"

    Top10Companies::Scraper.scrape_companies
    main_menu
  end

  def main_menu

    display_companies

    puts ""
    puts "Please input 1-10 to learn more details about a company."
    puts ""
    puts "To exit the program, please type 'exit'."
    puts "-----------------------------------------------------------------"

    input = gets.strip
    index = input.to_i - 1

    if !index.between?(0, 9) && input != "exit"
      puts "Invalid input."
      main_menu
    elsif input == "exit"
      puts "Thank you for using my Top10Companies Gem! Goodbye!"
    else
      display_company_details(index)
    end
  end

  def display_companies
    puts ""
    puts "Here are the Top 10 Companies to Work For in 2018:"
    puts ""
    companies = Top10Companies::Company.all

    companies.each.with_index(1) do |company, index|
      puts "(#{index}) #{company.name.upcase}"
    end
  end

  def user_selection
    puts ""
    puts "Would you like to choose another company? Y or N?"

    input = gets.strip.downcase
    if input == "y"
      main_menu
    elsif input == "n"
      puts "Thank you for using my Top10Companies Gem! Goodbye!"
      exit
    else
      puts "Your answer was not recognized."
      main_menu
    end
  end

  def display_company_details(index)

    company = Top10Companies::Company.all[index]

    if !company.industry || !company.employee_quote || !company.employee_rating || !company.description
      Top10Companies::Scraper.scrape_company_details(company)
    end

    puts "Here are the details for #{company.name}:"
    puts ""
    puts company.industry
    puts ""
    puts "Employee Quote: " + company.employee_quote
    puts ""
    puts "Employee Rating: " + company.employee_rating
    puts ""
    puts "What They Do: " + company.description

    user_selection
  end

end
