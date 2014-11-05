class Play
 
  def playgame

    get_select
    get_player_select
    get_computer_select
    print_result
  end

  def get_select
    puts "Your move? (R/P/S, q to quit)"
  end

  def get_player_select
    @player_select = gets.chomp.capitalize
  end
  
  def get_computer_select
    @computer_select = ["R","S","P"].sample
  end

  def print_result

    if @computer_select == @player_select
      puts "The result is a tie!"

    elsif @computer_select == "R"
      if @player_select == "P"
        puts "Computer wins!"  
      else
        puts "Player wins!"
      end
    elsif @computer_select == "S"
      if @player_select == "P"
        puts "Computer wins!"  
      else
        puts "Player wins!"
      end
    elsif @computer_select == "P"
      if @player_select == "R"
        puts "Computer wins!"  
      else
        puts "Player wins!"
      end
    end
  end
end

play = Play.new
play.playgame
