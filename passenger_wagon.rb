require_relative 'wagon'

class PassengerWagon < Wagon
  attr_accessor :seats, :take_seats, :free_seats

  def initialize(seats)
    super
    @seats = seats
    @type = :passenger
    @free_seats = seats
    @take_seats = 0
  end

  def take_seat
    if @take_seats < @seats
      @take_seats += 1
      @free_seats -= 1
    end
  end

  def free
    puts "Free seats: #{free_seats}/#{seats}"
  end

  def taken
    puts "Taken sets: #{take_seats}/#{seats}"
  end
end