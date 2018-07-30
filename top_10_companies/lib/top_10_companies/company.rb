class Top10Companies::Company

  attr_accessor :name, :url, :industry, :description, :employee_quote, :employee_rating

  @@all = []

  def initialize(name = nil, url = nil)
    @name = name
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

end
