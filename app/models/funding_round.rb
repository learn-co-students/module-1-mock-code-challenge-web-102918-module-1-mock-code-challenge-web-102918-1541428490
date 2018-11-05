class FundingRound

  attr_reader :startup, :venture_capitalist, :type, :investment

  def initialize(startup, venture_capitalist, type)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @@all << self
  end

  def investment=(investment)
    @investment = investment
    @investment.class == Float && @investment >= 0 ? @investment : "Invalid"
  end

  @@all = []

  def self.all
    @@all
  end

end
