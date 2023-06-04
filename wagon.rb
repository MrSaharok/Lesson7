class Wagon
  attr_reader :type, :number

  def initialize(wagon_type)
    @type = wagon_type
    @number = rand(100)
  end
end