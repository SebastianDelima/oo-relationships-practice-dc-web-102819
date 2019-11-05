class Passenger
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def drivers
        all_rides = self.rides
             all_rides.collect do |rides|
                rides.driver_name
              end
    end

    def rides
        all_rides = Ride.all.select do |ride|
            ride.name == self
        end
        all_rides
    end

    def total_distance
        all_distance = self.rides.map do |ride|
            ride.distance
        end
        num = 0
        all_distance.each do |number|
            num += number
        end
        return num
    end

    def self.premium_members
        all_passengers = Passenger.all
        all_passengers.select do |passenger|
            passenger.total_distance > 100
        end
    end

    def self.all
        @@all
    end
  
end