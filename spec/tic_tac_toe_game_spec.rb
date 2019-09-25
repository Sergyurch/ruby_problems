require './lib/tic_tac_toe_game.rb'

RSpec.describe Player do
  describe "#initialize" do
    it "assigns name to a player" do
      player = Player.new("Serg")
      expect(player.name).to eql("Serg")
    end
  end
end

RSpec.describe Board do
  describe "#initialize" do
    it "creates an empty board" do
      board = Board.new
      expect(board.cells).to eql([" "," "," "," "," "," "," "," "," "])
    end
  end
end

RSpec.describe Game do
  describe "#finish?" do
    it "checks whether any player won and the game is over" do
      game = Game.new
      game.player1 = Player.new("Bob")
      game.player1.sign = 'X'
      game.player2 = Player.new("Mike")
      game.player2.sign = "0"
      game.board = Board.new
      expect(game.finish?(game.player1)).to eql(nil)
      expect(game.finish?(game.player2)).to eql(nil)
      game.board.cells[0] = "0"
      game.board.cells[1] = "0"
      game.board.cells[2] = "0"
      expect(game.finish?(game.player2)).to eql(true)
      expect(game.finish?(game.player1)).to eql(nil)
      game.board.cells[0] = "0"
      game.board.cells[1] = "X"
      game.board.cells[2] = "0"
      game.board.cells[3] = "0"
      game.board.cells[4] = "X"
      game.board.cells[7] = "X"
      expect(game.finish?(game.player2)).to eql(nil)
      expect(game.finish?(game.player1)).to eql(true)
    end
  end
end