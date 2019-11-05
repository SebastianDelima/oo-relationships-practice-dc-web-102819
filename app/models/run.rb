require_relative 'driver.rb'
require_relative 'passenger.rb'
require_relative 'ride.rb'
require 'pry'

carmelina = Passenger.new("Carmelina")
andres = Passenger.new("Andres")
hector = Driver.new("Hector")
jason = Driver.new("Jason")
ride_to_white_house = Ride.new(3.5, carmelina, hector)
ride_to_flatiron = Ride.new(0.5, andres, hector)
ride_to_st_denis = Ride.new(33.3, andres, jason)
ride_to_mexico = Ride.new(378, andres, jason)
andres.drivers
andres.rides
andres.total_distance
Passenger.premium_members
hector.passengers
Driver.mileage_cap(100)
hector.driver_mileage
binding.pry