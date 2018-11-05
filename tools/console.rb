require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("Startup 1", "Leanne Cabey", "fashion")
startup2 = Startup.new("Startup 2", "Brendan Price", "gaming")
startup3 = Startup.new("Startup 3", "Rachael Cabey", "genetics")

vc1 = VentureCapitalist.new("Bill Cabey", 2000000000)
vc2 = VentureCapitalist.new("Karen Cabey", 500000)
vc3 = VentureCapitalist.new("Harry Potter", 3000000000)

# round1 = startup1.sign_contract(vc1, "Angel", 5000)
# round2 = startup2.sign_contract(vc2, "Angel", 200.0)
# round3 = vc3.offer_contract(startup3, "Angel", 1000)
# round4 = vc1.offer_contract(startup2, "Angel", 15000.0)
#
# Startup.all
#
# startup2.funding_rounds
# startup2.total_funds
# startup2.investors
# startup2.big_investors
#
# Startup.find_by_founder("Leanne")
# Startup.domains
#
# VentureCapitalist.all
#
# vc1.funding_rounds
# vc1.portfolio
# vc1.biggest_investment
# vc1.invested("fashion")
#
# VentureCapitalist.tres_commas_club
# 
# FundingRound.all

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
