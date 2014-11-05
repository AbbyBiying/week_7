require_relative "playgame"
require_relative "print_result"
require_relative "round"
require_relative "player"

class Round

  ROUND = 5

  def round

   ROUND.times do  

    get_select
    get_player_select
    get_computer_select
    print_result
   end

  end

end
