require "csv"  
require_relative "none"
require_relative "hotel"

class Main
  attr_reader :hotels

  def initialize 
    @file = 'hotels.csv'
    get 
  end 
  
  def go
    print_all
    ask
    answer
    result
  end
  
  private

  def csv_reader(&block)
    CSV.foreach(@file, headers: true).map(&block)
  end 

  def get
    @hotels = csv_reader do |row|
      Hotel.new(row)
    end
  end

  def print_all
    puts hotels
  end

  def ask
    puts "What property? >"
  end
 
  def answer
    query = gets.chomp
    search(query) 
  end

  def search(query)
    hotels.find { |hotel| hotel.name == query }
  end

  def result
    
  end
 
end

main = Main.new
main.go

