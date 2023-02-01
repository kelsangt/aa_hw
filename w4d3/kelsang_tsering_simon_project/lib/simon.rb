class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end

  def play
    until game_over
      self.take_turn
    end
    self.game_over_message 
    self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    if !game_over
      self.round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    puts "Please repeat the sequence, one color at a time: "
    i = 0
    while i < self.sequence_length
      user_input = gets.chomp
      if user_input != self.seq[i]
        self.game_over = true
      end
      i += 1
    end
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    "Round successfully completed"
  end

  def game_over_message
    "Game over"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end
