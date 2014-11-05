require "csv"  

class Name

  def hotel_name
    name = CSV.foreach("hotels.csv", headers: true) do |row| 
     puts row["Hotel"]
    end
  end
end

name = Name.new
name.hotel_name
