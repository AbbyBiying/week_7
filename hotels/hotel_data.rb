class HotelData
  attr_reader :hotels

  def initialize(hotels)
    @hotels = hotels
  end

  def search(query)
    hotels.find { |hotel| hotel.name == query } || None.new
  end

  def names
    hotels.each do |hotel|
      puts hotel
    end
  end
end
