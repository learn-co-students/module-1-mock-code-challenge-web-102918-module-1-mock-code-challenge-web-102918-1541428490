class VentureCapitalist
  attr_reader :name
  attr_accessor :total_worth

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth

    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select do |vc|
      vc.total_worth > 1000000000
    end
  end

  def offer_contract(startup, investment_type, investment_amount)
    FundingRound.new(startup, self, investment_type, investment_amount)
  end

  def funding_rounds
    FundingRound.all.select do |funding_round|
      funding_round.venture_capitalist == self
    end
  end

  def full_portfolio
    funding_rounds.map do |funding_round|
      funding_round.startup
    end
  end

  def portfolio
    full_portfolio.uniq
  end

  def biggest_investment
    sorted_rounds = funding_rounds.sort {|round1, round2| round2.investment <=> round1.investment}
    sorted_rounds.first
  end

  def funding_rounds_by_domain(domain)
    FundingRound.all.select do |funding_round|
      funding_round.venture_capitalist == self &&
      funding_round.startup.domain == domain
    end
  end

  def invested(domain)
    invested_amount = 0
    funding_rounds_by_domain(domain).each do |round|
      invested_amount += round.investment
    end
    invested_amount
  end

end
