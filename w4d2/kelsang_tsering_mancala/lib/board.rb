class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = [[], [], [], [], [], [], [], [], [], [], [], [], [], []]
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
      # cups << [:stone, :stone, :stone, :stone]
    @cups.each_with_index do |cup, idx|
      if idx != 6 || idx != 13
        4.times do |ele|
          cup << :stone
        end
      end
    end
  end

  def valid_move?(start_pos)
    if !cups.include?(start_pos)
      raise ArgumentError.new "Invalid starting cup"
    end
    if cups[start_pos] == 0
      raise Exception.new "Starting cup is empty"
    end
  end


  def make_move(start_pos, current_player_name)
    cups[start_pos] = []
    render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
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
  end
end
