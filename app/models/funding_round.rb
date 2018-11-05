class FundingRound

  attr_accessor :type, :investment_float
  attr_reader :startup, :vc

  @@all = []

  def self.all
    @@all
  end

  def initialize(startup, vc, type, investment_float)
    @startup = startup
    @vc = vc
    @type = type
    @investment_float = investment_float
    @@all << self
  end

end
