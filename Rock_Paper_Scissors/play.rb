class Play

  def get_select
    puts Your move? (R/P/S, q to quit)
    @player_select = gets.chomp

    if @computer_select == @player_select
      puts "The result is a tie!"

      elsif @computer_select == "R"
        if @player_select = "P"
          puts "Computer wins!"  
        else
          puts "Player wins!"
        end
      end

      elsif @computer_select == "S"
        if @player_select = "P"
          puts "Computer wins!"  
        else
          puts "Player wins!"
        end
      end

      elsif @computer_select == "P"
        if @player_select = "R"
          puts "Computer wins!"  
        else
          puts "Player wins!"
        end
      end

  end
  
end
