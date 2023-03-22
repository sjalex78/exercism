=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end
class Tournament

  GAME_DEF = {
    "win" => {
      "score" => 3
    },
    "draw" => {
      "score" => 1
    },
    "loss" => {
      "score" => 0
    }
  }.freeze

  def self.parse_input(input)
    return unless input != "\n"
      parse_info = input.split(';')
      [parse_info[0], parse_info[1], parse_info[2].chomp]
  end

  def self.tally(input)
    output = <<~TALLY
    Team                           | MP |  W |  D |  L |  P
    TALLY
    pp parse_input(input)[0]
    pp parse_input(input)[1]
    pp parse_input(input)[2]

      team_a_game_tally = 1
      team_b_game_tally = 1
      team_a_win_score = 0
      team_a_loss_score = 0
      team_b_win_score = 0
      team_b_loss_score = 0
      team_a_points = 0
      team_b_points = 0
    #   if parse_input(input)[2] == "win" ||
    #     team_a_win_score += 1
    #     team_b_loss_score += 1
    #     team_a_points += 3
    #     output = <<~TALLY
    #       Team                           | MP |  W |  D |  L |  P
    #       #{teams[0]}             |  #{team_a_game_tally} |  #{team_a_win_score} |  0 |  0 |  #{team_a_points}
    #       #{teams[1]}             |  #{team_b_game_tally} |  0 |  0 |  #{team_b_loss_score} |  0
    #     TALLY
    #   # elsif teams[2].chomp == "loss"
    #   #   team_a_loss_score += 1
    #   #   team_b_win_score += 1
    #   #   team_b_points += 3
    #   #   output = <<~TALLY
    #   #     Team                           | MP |  W |  D |  L |  P
    #   #     #{teams[0]}             |  #{team_a_game_tally} |  #{team_a_win_score} |  0 |  #{team_a_loss_score} |  #{team_a_points}
    #   #     #{teams[1]}             |  #{team_b_game_tally} |  #{team_b_win_score} |  0 |  #{team_b_loss_score} |  #{team_b_points}
    #   #   TALLY
    #   end
    # end
    output
  end

    #   input.format("%20<name>s | %2<score>s |", name: "sarah", score: "20")
    #  => "               sarah | 20 |"

end


# "Allegoric Alaskans;Blithering Badgers;win".find()
