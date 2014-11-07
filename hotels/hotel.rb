require "csv"  

class Hotel
  attr_reader :name, :location, :phone_number, :singles, :doubles
  
  def initialize(hotel_hash)
    @name = hotel_hash["Hotel"].lstrip
    @location = hotel_hash["City"].strip
    @phone_number = hotel_hash["Phone Number"].strip
    @singles = clean_number(hotel_hash["Number of Singles"])
    @doubles = clean_number(hotel_hash["Number of Doubles"])
  end 

  def clean_number(number)
    number.strip.gsub(/[^\d]+/, "").to_i
  end

  def total_rooms
    singles + doubles
  end

  def to_s
    name
  end    

  def info
    <<-EOS
    Phone Number: #{phone_number}
    Singles: #{singles}
    Doubles: #{doubles}
    Location: #{location}
    Number of rooms: #{total_rooms}
    EOS
  end

end  
