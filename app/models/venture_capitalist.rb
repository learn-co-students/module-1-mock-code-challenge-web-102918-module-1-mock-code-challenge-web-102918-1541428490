require 'pry'

class VentureCapitalist

  attr_accessor :name, :total_worth

  @@all = []

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select do |vc|
      vc.total_worth > 1000000000
    end
  end

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def offer_contract(startup, type, amount_float)
    FundingRound.new(startup, self, type, amount_float)
  end

  def funding_rounds
    FundingRound.all.select do |round|
      round.vc == self
    end
  end

  def portfolio
    startups = []
    funding_rounds.each do |round|
      startups << round.startup
    end
    startups.uniq
  end

  def biggest_investment
    amount = 0.to_f
    biggest_round = nil
    funding_rounds.each do |round|
      if round.investment_float > amount
        amount = round.investment_float
        biggest_round = round
      end
    end
    biggest_round
  end

  def invested(domain)
    total = 0.0
    funding_rounds.each do |round|
      if round.startup.domain == domain
        total += round.investment_float
      end
    end
    total
  end

end
