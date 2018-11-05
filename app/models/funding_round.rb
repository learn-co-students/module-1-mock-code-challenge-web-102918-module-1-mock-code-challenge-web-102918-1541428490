class FundingRound
  attr_accessor :startup, :venture_capitalist, :type
  # - `FundingRound#venture_capitalist`
  #   - returns the venture capitalist object for that given funding round
  #   - Once a funding round is created, I should not be able to change the venture capitalist
  @@all = []
  # - `FundingRound#type`
  #   - returns a **string** that is the type of funding round
  #   - Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C
  def initialize(startup, investment, type)
    @startup = startup
    @investment = investment
    @type = type
    @@all << self
  end
  # - `FundingRound#startup`
  #   - returns the startup object for that given funding round
  #   - Once a funding round is created, I should not be able to change the startup
  # - `FundingRound#investment`
  #   - returns a **number** that is the amount invested during this funding round
  #   - This should be a float that is not a negative number.
  def self.all
    @@all
    # - `FundingRound.all`
    #   - returns all of the funding rounds
  end
end
