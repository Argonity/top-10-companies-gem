Building My First CLI Gem

- A command line interface for the top 10 companies to work for in 2018, as
  displayed on greatplacetowork.com.

- When the user runs my executable file, it will display a list of the top 10
  companies (:name). The user can then make a selection to learn more about the company.

- After the user makes a selection, the following company details will be displayed:
    - Industry (:industry)
    - Worldwide Revenues (:revenue)
    - Employee Rating (:employee_rating)
    - What They Do (:description)

- The program will then ask the user if they would like to choose another company
  from the list to view its details. If the user inputs "Y", then it will loop back to
  #main_menu and once again display the list of companies to select from. If the
  user inputs "N", the program will display a goodbye message and exit.
