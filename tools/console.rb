require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

piedpiper = Startup.new("Pied Piper", "compression", "Richard Hendricks")
company2 = Startup.new("Company 2", "banking", "John Doe")
company3 = Startup.new("Company 3", "ride-sharing", "Jane Doe")

matt = VentureCapitalist.new("Matt", 2000000000.00)
mike = VentureCapitalist.new("Mike", 5000000.00)

piedpiper.sign_contract(matt, "angel", 5000000.00)
company2.sign_contract(matt, "angel", 5000000.00)
company3.sign_contract(mike, "angel", 2000000.00)

matt.offer_contract(piedpiper, "series b", 5000000.00)

binding.pry

0 #leave this here to ensure binding.pry isn't the last line
