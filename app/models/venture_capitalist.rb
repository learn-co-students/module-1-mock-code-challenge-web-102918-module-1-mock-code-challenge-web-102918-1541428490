class VentureCapitalist

  attr_accessor :name, :total_worth

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def offer_contract(startup, investment_type, investment_amount)
    new_round = FundingRound.new(startup, self, investment_type)
    new_round.investment = investment_amount
  end

  def funding_rounds
    FundingRound.all.select {|round| round.venture_capitalist == self}
  end

  def portfolio
    self.funding_rounds.map {|round| round.startup}.uniq
  end

  def biggest_investment
    self.funding_rounds.max_by {|round| round.investment}
  end

  def invested(domain)
    startups_in_domain = self.portfolio.select {|startup| startup.domain == domain}
    round_in_domain = self.funding_rounds.select {|round| startups_in_domain.include?(round.startup)}
    investments_in_domain = round_in_domain.map {|round| round.investment}
    investments_in_domain.inject {|sum, investment| sum + investment}
  end

  @@all = []

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select {|vc| vc.total_worth >= 1000000000}
  end

end
