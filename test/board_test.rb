require 'minitest/autorun'
require '../lib/board'

class BoardTest < MiniTest::Unit::TestCase

	def setup
		@board = Board.new
		@row = @board.row
		@column = @board.column

	end

	def test_board_row
		
		puts @board.grid.inspect
		puts @row.inspect
		puts @column.inspect
		# puts @board.input
		puts @board.grid.length.inspect

	end

	def test_input_contains_81_cells
		assert_equal 81, @board.grid.length
	end

	def test_row_number_are_9_characters_long
		assert_equal @row.length, 9
	end

	def test_column_length
		assert_equal @column.length, 9
	end
	

	def test_box_contains_9_cells
		assert_equal @board.box.length, 9
	end


	# def test_box_contains_1_to_9
	# 	assert @board.box, [1..9] 

	# end

end
