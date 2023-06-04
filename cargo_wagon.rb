require_relative 'wagon'

class CargoWagon < Wagon
  attr_accessor :volume, :take_volume, :free_volume

  def initialize(volume)
    super
    @volume = volume
    @type = :cargo
    @free_volume = volume
    @take_volume = 0
  end

  def take_volumes(vol)
    if (@take_volume + vol) <= @volume
      @take_volume += vol
    @free_volume = volume - vol
    end
  end
  def free
    puts "Free volume: #{free_volume}/#{volume}"
  end

  def taken
    puts "Taken volume: #{take_volume}/#{volume}"
  end
end