class Startup

  attr_accessor :name, :domain
  attr_reader :founder

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    Startup.all.find do |startup|
      startup.founder == founder_name
    end
  end

  def self.domains
    domains = Startup.all.map do |startup|
      startup.domain
    end
    domains.uniq
  end

  def pivot(domain, name)
    self.domain = domain
    self.name = name
  end

  def sign_contract(venture_capitalist, type, amount)
    new_investment = FundingRound.new(self, venture_capitalist, type)
    new_investment.investment += amount
  end

  def funding_rounds
    FundingRound.all.select do |funding_round|
      funding_round.startup == self
    end
  end

  def num_funding_rounds
    self.funding_rounds.length
  end

  def total_funds
    total_investment = 0.0
    FundingRound.all.each do |funding_round|
      if funding_round.startup == self
        total_investment += funding_round.investment
      end
    end
    "#{self.name} has received a total of $#{total_investment} to date."
  end

  def investors
    investors = self.funding_rounds.map do |round|
      round.venture_capitalist
    end
    investors.uniq
  end

  def big_investors
    self.investors.select do |investor|
      VentureCapitalist.tres_commas_club.include?(investor)
    end
  end

end
