class Startup
  attr_accessor :name, :funding_round, :venture_capitalist
  # - `Startup#name`
  #   - returns a **string** that is the startup's name
  attr_reader :founder, :domain
  # - `Startup#founder`
  #   - returns a **string** that is the founder's name
  #   - Once a startup is created, the founder cannot be changed.
  @@all = []
  @@domains = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def founder=(founder)
    # - `Startup#founder`
    #   - returns a **string** that is the founder's name
    #   - Once a startup is created, the founder cannot be changed.
    @founder = founder
  end
  def domain=(domain)
    # - `Startup#domain`
    #   - returns a **string** that is the startup's domain
    #   - Once a startup is created, the domain cannot be changed.
    @domain = domain
  end
  # - `Startup#pivot`
  #   - given a string of a **domain** and a string of a **name**, change the domain and name of the startup
def self.find_by_founder
  # - `Startup.find_by_founder`
  #   - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
end
def self.domains
  # - `Startup.domains`
  #   - should return an **array** of all of the different startup domains
end
  def self.all
    # - `Startup.all`
    #   - should return **all** of the startup instances
    @@all
  end
end
# - `Startup#sign_contract`
#   - given a **venture capitalist object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# - `Startup#num_funding_rounds`
#   - Returns the total number of funding rounds that the startup has gotten
# - `Startup#total_funds`
#   - Returns the total sum of investments that the startup has gotten
# - `Startup#investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company
# - `Startup#big_investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club
