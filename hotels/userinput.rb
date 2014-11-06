require "csv"
require_relative "name"

class Userinput

  print_all
  ask
  answer
  result

  def print_all
    puts name
  end
  def ask
    puts "What property? >"
  end
 
  def answer
    answer = get.chomp
  end

  def result
    
  end

end
