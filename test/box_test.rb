require '../lib/box'
require '../lib/board'
require 'minitest/autorun'

class BoxTest < MiniTest::Unit::TestCase
	def setup
		@box = Box.new(43)
	end

	def test_row_first_works
		
		assert_equal 36, @box.row_first
	end

	def test_box_row_works
		assert_equal 1, @box.box_row_index 
	end

	def test_box_column_index_works
		assert_equal 2, @box.box_column_index
	end

	def test_box_first_works
		assert_equal 33, @box.box_first
	end

	def test_find_topleft_corner_of_a_box

		assert_equal 33, @box.box_first
	end


end