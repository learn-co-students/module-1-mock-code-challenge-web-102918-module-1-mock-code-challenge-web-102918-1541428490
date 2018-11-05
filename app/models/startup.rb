class Startup

  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    self.all.find do |startup|
      startup.founder == founder
    end
  end

  def self.domains
    self.all.map do |startup|
      startup.domain
    end
  end

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot(name, domain)
    self.name = name
    self.domain = domain
  end

  def sign_contract(vc, type, amount_float)
    FundingRound.new(self, vc, type, amount_float)
  end

  def rounds
    FundingRound.all.select do |round|
      round.startup == self
    end
  end

  def num_funding_rounds
    rounds.length
  end

  def total_funds
    sum = 0.0
    rounds.each do |round|
      sum += round.investment_float
    end
    sum
  end

  def investors
    investors = []
    rounds.each do |round|
      investors << round.vc
    end
    investors.uniq
  end

end
