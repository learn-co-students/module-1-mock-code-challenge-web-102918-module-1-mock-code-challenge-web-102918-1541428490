class FundingRound
attr_accessor :funding_round,:startup_name,:type
attr_reader :funding_round, :venture_capitalist

@@all = []
def initialize(funding_round,startup_name,type)
  @funding_round = funding_round
  @startup_name = startup_name
  @type = type
  @investment = 0
  @venture_capitalist = venture_capitalist
  @all << self
end


def self.all
  @@all
end




end # end of the class
