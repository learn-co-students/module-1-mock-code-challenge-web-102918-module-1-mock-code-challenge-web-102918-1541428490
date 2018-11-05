class VentureCapitalist
  attr_accessor :name, :total_worth
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.tres_commas_club
    vc_list =[]
    @@all.each do |vc|
      if vc.total_worth > 1000000000
        vc_list << vc.name
      end
      vc_list
    end
  end
end
