class FundingRound

 attr_reader :startup, :venture_capitalist
  attr_accessor :round_type, :investment

  @@all = []

  def initialize(startup, venture_capitalistc, round_type, investment)
    @startup = startup
    @vc = vc
    @type = type
    @invest = invest
    @@all << self
  end
end
