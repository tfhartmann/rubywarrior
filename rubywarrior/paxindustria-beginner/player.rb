class Player
  def play_turn(warrior)
    # add your code here
    @space = warrior.feel
    puts @space
    if warrior.feel.enemy?
      warrior.attack!
    end
    if warrior.feel.empty?
      warrior.walk!
    end
  end
end

#Warrior Abilities:
#  warrior.feel
#    Returns a Space for the given direction (forward by default).
#
#  warrior.attack!
#    Attacks a unit in given direction (forward by default).
#
#  warrior.walk!
#    Move in the given direction (forward by default).
