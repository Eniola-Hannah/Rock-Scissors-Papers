actor {
  public type Choice = {
    #rock;
    #paper;
    #scissors;
  };

  public func play(player1 : Choice, player2 : Choice) : async Text {
    let winner = switch (player1, player2) {
      case (#rock, #scissors) { #rock };
      case (#scissors, #paper) { #scissors };
      case (#paper, #rock) { #paper };
      case (_, _) { #none };
    };

    switch (winner) {
      case (#rock) { return "Player 1 wins!" };
      case (#paper) { return "Player 2 wins!" };
      case (#scissors) { return "Player 1 wins!" };
      case (#none) { return "It's a tie!" };
    };
  };
};
