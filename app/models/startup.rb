class Startup
  attr_accessor :name
  attr_reader :founder, :domain
  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot(domain, name)
    @name = name
    @domain = domain
  end

  def self.all
    @@all
  end

  def find_by_founder(founder)
    @@all.find do |startup|
      startup.name == founder
    end
  end

  def domains
    @@all.map do |startup|
      startup.domain
    end
  end

  def sign_contract(venture_capitalist, round_type, investment)
    FoundingRound.new(self,venture_capitalist, round_type, investment )
  end

  def num_funding_rounds
    counter = 0
    FundingRound.all.each do |round|
      round.startup == self
      counter += 1
    end
    counter
  end

  def total_funds
    total_fund = 0
    FundingRound.all. each do |round|
      if round.startup == self
        total_funds += round.investment
      end
    end
    total_funds
  end
