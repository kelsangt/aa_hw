class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = [[], [], [], [], [], [], [], [], [], [], [], [], [], []]
    place_stones
    @cups[6] = []
    @cups[13] = []
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
      # cups << [:stone, :stone, :stone, :stone]
    @cups.each_with_index do |cup, idx|
      4.times do |ele|
        cups[idx] << :stone
      end
    end
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 13
      raise ArgumentError.new "Invalid starting cup"
    end
    if cups[start_pos].empty?
      raise Exception.new "Starting cup is empty"
    end
  end


  def make_move(start_pos, current_player_name)
    cups.each do |cup|
      if !cups[start_pos].empty?
        cup << cups[start_pos].pop
      end
    end
    
    cups[6] = [:stone]
    next_turn(start_pos)
    render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if cups[ending_cup_idx].empty?
      return :switch 
    elsif cups[ending_cup_idx] == current_player.side 
      return :prompt
    elsif cups[ending_cup_idx].include?(:stone)
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
    if @current_player.one_side_empty?
      return @current_player_name
    end
  end
end
