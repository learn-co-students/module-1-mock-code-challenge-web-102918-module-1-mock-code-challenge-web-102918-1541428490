class FundingRound
  attr_reader :startup, :venture_capitalist
  attr_accessor :round_type, :investment

  @@all = []

  def initialize(startup, venture_capitalist, round_type, investment)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @investment = investment.to_f
    @@all << self
  end

  def self.all
    @@all
  end

end
