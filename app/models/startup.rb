class Startup
  attr_reader :founder, :domain
  attr_accessor :name

  @@all = []

  def initialize(name, domain, founder)
    @name = name
    @domain = domain
    @founder = founder

    @@all << self
  end

  def self.all
    @@all
  end

  def pivot(name, domain)
    Startup.new(name, domain, self.founder)
  end

  def self.find_by_founder(founder_name)
    @@all.select do |startup|
      startup.founder == founder_name
    end
  end

  def self.domains
    @@all.map do |startup|
      startup.domain
    end
  end

  def sign_contract(venture_capitalist, investment_type, investment_amount)
    FundingRound.new(self, venture_capitalist, investment_type, investment_amount)
  end

  def funding_rounds
    FundingRound.all.select do |funding_round|
      funding_round.startup == self
    end
  end

  def num_funding_rounds
    funding_rounds.count
  end

  def total_funds
    total_funds = 0
    funding_rounds.each do |funding_round|
      total_funds += funding_round.investment
    end
    total_funds
  end

  def all_investors
    funding_rounds.map do |funding_round|
      funding_round.venture_capitalist
    end
  end

  def investors
    all_investors.uniq
  end

  def big_investors
    big_vcs = VentureCapitalist.tres_commas_club
    big_vcs.map do |big_vc|
      FundingRound.all.select do |funding_round|
        funding_round.startup == self
        funding_round.venture_capitalist == big_vc
      end
    end
  end




end
