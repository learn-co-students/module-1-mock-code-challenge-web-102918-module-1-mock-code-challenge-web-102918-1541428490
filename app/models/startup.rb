class Startup

  attr_accessor :name
  attr_reader :founder, :domain

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot
    # given a string of a **domain** and a string of a **name**,
    # change the domain and name of the startup
  end

  def sign_contract(venture_capitalist, investment_type, investment_amount)
    new_round = FundingRound.new(self, venture_capitalist, investment_type)
    new_round.investment = investment_amount
  end

  def funding_rounds
    FundingRound.all.select {|round| round.startup == self}
  end

  def num_funding_rounds
    self.funding_rounds.length
  end

  def total_funds
    investments = self.funding_rounds.map {|round| round.investment}
    investments.inject {|sum, investment| sum + investment}
  end

  def investors
    self.funding_rounds.map {|round| round.venture_capitalist}.uniq
  end

  def big_investors
    self.investors.select {|investor| VentureCapitalist.tres_commas_club.include?(investor)}
  end

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    self.all.find {|startup| startup.founder == founder}
  end

  def self.domains
    self.all.map {|startup| startup.domain}
  end

end
