require 'minitest/autorun'
require '../lib/board'

class BoardTest < MiniTest::Unit::TestCase

	def setup
		@board = Board.new
		
	end

	def test_board_row
		puts @board.grid.inspect
		puts @board.row.inspect
		puts @board.input
	end

	def test_input_contains_81_cells
		assert_equal 81, @board.input_count
	end

	def test_the_runtime_error_for_when_not_enough_numbers_are_input
		assert_raises RuntimeError do 
			raise 'error' 
			@board.input_count < 81
		end
	end

	def test_row_number_are_9_charaters_long
		assert_equal @board.row.length, 9
	end

	def method_name
		
	end

end
