require 'minitest/autorun'
require '../lib/board'
require '../lib/box'

class BoardTest < MiniTest::Unit::TestCase

	def setup
		@board = Board.new("409075310130600807005200096016009720080020606007430000500107040720048009603050008")
		# @row = @board.row
		# @column = @board.column
	end



	def test_row_is_returned_for_a_given_index
		row = @board.rows(11)
		assert_equal "130600807", row.map{|cell| cell.value}.join
	end

	def test_column_is_returned_for_a_given_index
		column = @board.columns(27)
		assert_equal "410000576", column.map{|cell| cell.value}.join
	end

	def test_box_is_returned_for_a_given_index
		box = @board.boxes(40)
		assert_equal "009020430", box.map {|cell| cell.value}.join
	end




	# def test_board_row		
	# 	puts @board.grid.inspect
	# 	puts @row.inspect
	# 	puts @column.inspect
	# 	# puts @board.input
	# 	puts @board.grid.length.inspect

	# end

	# def test_input_contains_81_cells
	# 	skip
	# 	assert_equal 81, @board.grid.length
	# end

	# def test_column_length
	# 	columns = @board.columns
	# 	assert_equal 9, columns.length
	# end
	

	


	# def test_box_contains_1_to_9
	# 	assert @board.box, [1..9] 

	# end

end
