class Ride
    attr_accessor :distance
    attr_reader  :name, :driver_name
    @@all = []

    def initialize(distance, name, driver_name)
        @distance = distance
        @name = name
        @driver_name = driver_name
        @@all << self
    end

    def self.all
        @@all
    end
end