class VentureCapitalist

  attr_accessor :total_worth
  attr_reader :name

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
    tres_commas_club = []
    VentureCapitalist.all.each do |venture_capitalist|
      if venture_capitalist.total_worth > 1000000000
        tres_commas_club << venture_capitalist
      end
    end
    tres_commas_club
  end

  def offer_contract(startup, amount, type)
    new_funding = FundingRound.new(startup, self, type)
    new_funding.investment += amount
  end

  def funding_rounds
    FundingRound.all.select do |funding_round|
      funding_round.venture_capitalist == self
    end
  end

  def portfolio
    portfolio = self.funding_rounds.map do |funding_round|
      funding_round.startup
    end
    portfolio.uniq
  end

  def biggest_investment
    investments = self.funding_rounds.sort_by do |funding_round|
      funding_round.investment
    end
    investments.last
  end

  def invested(domain)
    total_invested = 0.0
    self.funding_rounds.each do |funding_round|
      if funding_round.startup.domain == domain
        total_invested += funding_round.investment
      end
    end
    "#{self.name} has invested a total of $#{total_invested} in #{domain}."
  end
end
