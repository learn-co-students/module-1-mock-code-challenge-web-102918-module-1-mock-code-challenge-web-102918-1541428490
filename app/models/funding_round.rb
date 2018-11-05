class FundingRound
    attr_reader :startup, :venture_capitalist
    attr_accessor :type, :investment
    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
       
        if investment > 0 
            @investment = investment.to_f
            @startup = startup
            @type = type
            @venture_capitalist = venture_capitalist
            self.class.all << self
        else
            puts "There was an error in creating this form please try again"
        end
    end

    def self.all
        @@all 
    end

    def self.domains
        domains_invested = {}

        all.each do |funding_round|
            if domains_invested[funding_round.startup.domain]
                domains_invested[funding_round.startup.domain] += funding_round.investment 
                domains_invested[funding_round.startup.domain]
            else 
                domains_invested[funding_round.startup.domain] = funding_round.investment
            end
        end

        domains_invested
    end
    
end
