class Driver
    attr_reader :driver_name
    @@all = []

    def initialize(driver_name)
        @name = driver_name
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.driver_name == self
        end
    end

    def driver_mileage
        all_distance = self.rides.collect do |rides|
            rides.distance
        end
        distance = 0
        all_distance.each do |number|
            distance += number
        end
        distance
    end

    def passengers
        all_rides = self.rides
         all_rides.collect do |ride|
            ride.name
        end
    end
    
    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        all_drivers = Driver.all
        all_drivers.select do |drivers|
            drivers.driver_mileage > distance
    end
end

end

# - .mileage_cap(distance)
#   - takes an argument of a distance (float)
#    and returns all drivers who have exceeded that mileage