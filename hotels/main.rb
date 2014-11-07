require "csv"  
require_relative "none"
require_relative "hotel"
require_relative "hotel_data"

class Main
  attr_reader :data

  def initialize 
    @file = 'hotels.csv'
    @data = HotelData.new(get_hotels)
  end 
  
  def go
    puts ""
    print_all
    ask
    answer
  end
  
  private

  def csv_reader(&block)
    CSV.foreach(@file, headers: true).map(&block)
  end 

  def get_hotels
    csv_reader do |row|
      Hotel.new(row)
    end
  end

  def print_all
    data.names
  end

  def ask
    puts "What property? >"
  end
 
  def answer
    query = gets.chomp
    hotel = data.search(query) 
    puts hotel.info
  end
end

main = Main.new
main.go

