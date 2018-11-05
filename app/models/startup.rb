class Startup
  attr_accessor :name
  attr_reader :founder, :domain
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def pivot(domain, name)
    @name = name
    @domain = domain
  end

  def self.all
    @@all
  end

  def find_by_founder(founder)

    @@all.find do |startup|
      if startup.name == founder
        startup
      end
    end
  end

  def domains
    @@all.map do |startup|
      startup.domain
    end
  end
end
