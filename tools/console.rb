require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

future_corn = Startup.new("Future Corn", "Matt", "Biotech")
better_cow = Startup.new("Better Cow", "Dave", "Biotech")
trash_power = Startup.new("TrashPowr", "Johan", "Energy")

ashton = VentureCapitalist.new("Ashton Killingsworth", 500000)
blake = VentureCapitalist.new("Blake Sims", 2000000000)
jr_big_bucks = VentureCapitalist.new("JR Bucks III", 5000000000)

future_corn.sign_contract(blake, "Seed", 5000000.0)
blake.offer_contract(better_cow, 1000000.0, "Series B")
trash_power.sign_contract(ashton, "Angel", 2000000000.0)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
