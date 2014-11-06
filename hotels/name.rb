require "csv"  

class Hotel
  attr_reader :name, :location, :phone_number, :singles, :doubles
  
  def initialize(hotel_hash)
    @name = hotel_hash["Hotel"].lstrip
    @location = hotel_hash["City"]
    @phone_number = hotel_hash["Phone Number"]
    @singles = format_number(hotel_hash["Number of Singles"])
    @doubles = format_number(hotel_hash["Number of Doubles"])
  end 
 
  def totaltooms
    singles + doubles
  end

  CSV.foreach("hotels.csv", headers: true).map do |row|
    @name = row["Hotel"]
    @location = row["City"]
    @phone_number = row["Phone Number"]
    @singles = row["Number of Singles"]
    @doubles = row["Number of Doubles"]
  end 

  def to_s
    name
  end
 
    

  def info
    <<-EOS
    phone_number: #{phone_number}
    singles: #{singles}
    doubles: #{doubles}
    location: #{location}
    EOS
  end

end  
