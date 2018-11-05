require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
bob = VentureCapitalist.new("Bob", 10000)
dave = VentureCapitalist.new("Dave", 10000000000)
dash_it = Startup.new("Dash-it")
nah_bruh = Startup.new("Nah-Bruh")
dash_it.founder = "Mr. AwesomeSauce"
dash_it.domain = "The start of a beautiful thing"
funded1 = FundingRound.new(dash_it, 540000, "Angel")
funded2 = FundingRound.new(dash_it, 340000, "type A")
funded3 = FundingRound.new(nah_bruh, 1040000, "type B")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
