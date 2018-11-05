class FundingRound

  attr_accessor :investment
  attr_reader :startup, :venture_capitalist, :type

  @@all = []

  def initialize(startup, venture_capitalist, type)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @investment = 0.0

    @@all << self
  end

  def self.all
    @@all
  end
end
