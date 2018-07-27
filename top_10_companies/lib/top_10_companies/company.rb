class Top10Companies::Company

  attr_accessor :name, :url, :industry, :description, :revenue, :employee_rating

  @@all = []

  def initialize(name, url)
    @name = name
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

end
