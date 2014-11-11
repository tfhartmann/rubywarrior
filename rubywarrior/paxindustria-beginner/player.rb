class Player
  def play_turn(warrior)
    # add your code here
    @space = warrior.feel
    puts @space
    if warrior.feel.enemy?
      warrior.attack!
    end
    if warrior.feel.empty?
      if warrior.health < 20
        warrior.rest!
      else
        warrior.walk!
      end
    end
  end
end
