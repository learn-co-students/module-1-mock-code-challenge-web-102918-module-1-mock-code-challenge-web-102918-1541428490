class Startup
attr_accessor :startup_name
attr_reader :founder_name , :startup_domain

@@all =[]

def initialize(startup_name, startup_domain)
  @startup_name = startup_name
  @startup_domain = startup_domain
  @founder_name = founder_name
  @@all << self
end


def self.all
  @@all
end

# - given a string of a **domain** and a string of a **name**, change the domain and name of the startup
def pivot(startup_name, startup_domain)
  Startup.new(startup_name,startup_domain)

end
# given a string of a **founder's name**, returns the **first startup** whose founder's name matches
def self.find_by_founder(founder_name)
  result = self.all.detect {|startup| startup.name == founder_name}
      result
end


#should return an **array** of all of the different startup domains
def self.domains
@@all << startup_domain
end

def sign_contract(venture_capitalist, type_of_investment, amount_invested)


end


# creates a new funding round and associates it with that startup and venture capitalist.
# end
#
# `Startup#sign_contract`
#  - given a **venture capitalist object**, type of investment (as a string), and the  (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# - `Startup#num_funding_rounds`
#  - Returns the total number of funding rounds that the startup has gotten
# - `Startup#total_funds`
#  - Returns the total sum of investments that the startup has gotten
# - `Startup#investors`
#  - Returns a **unique** array of all the venture capitalists that have invested in this company
# - `Startup#big_investors`
#  - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club





end #end of the class
