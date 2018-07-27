class Top10Companies::Company

  attr_accessor :name, :url, :industry, :description
  #:number_of_employees, :revenues, :programs, :employee_ratings

  @@all = []

  def initialize(name, url)
    @name = name
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def description

  end

  def number_of_employees

  end

  def revenues

  end

  def programs

  end

  def employee_ratings

  end

end
