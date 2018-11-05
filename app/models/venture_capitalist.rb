class VentureCapitalist
    attr_reader :name, :total_worth
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, total_worth)
        @total_worth = total_worth
        @name = name
        self.class.all << self
    end

    def tres_commas_club
        total_worth > 1000000000
    end

    def self.tres_commas_club
        all.select{|capitalist| capitalist.tres_commas_club}
    end

    def offer_contract(startup, type, amount_invested)
        FundingRound.new(startup, self, type, amount_invested)
    end

    def funding_rounds
        FundingRound.all.select{|funding_round|funding_round.venture_capitalist == self}
    end

    def portfolio
        list_of_startups = funding_rounds.map{|funding_round| funding_round.startup}

        list_of_startups.uniq
    end

    def sorted_investment
        funding_rounds.sort{|funding_roundA, funding_roundB| funding_roundB.investment <=> funding_roundA.investment }
    end

    def biggest_investment
        sorted_investment.first
    end

    def invested(domain) 
        funding_same_domain = funding_round.select{|funding_round| funding_round.domain == domain} 

        domain_investment= funding_same_domain.map{|funding_round| funding_round.investment}

        domain_investment.inject(:+)
    end

end
