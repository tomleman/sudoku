class Board

	def initialize
		@input = "409075310130600807005200096016009720080020606007430000500107040720048009603050008"
	end


	def grid
		@grid = (0..80).to_a
		
	end

	def cell
		@cell = nil
	end


	def row

		row_array = grid.each_slice(9).to_a

		
	end

	def column
		@columns = (0..8).map do |col|
			@grid.select{|i| i % 9 == col}
		end
	end

	def box
		# vv-- row index --vv
		row_value = @cell / 9
		column_value = @cell % 9

		row_first = row_value * 9
		box_row = @cell / 27 
		# 3 is number of columns in a box
		box_column = column_value / 3
		box_index = row_first + column_value
		box_first_result = cell / 27
		box_first = box_first_res * 27 + (box_column * 3)
	end
	
end

# first element, of first 3 elements in board make up box-1

# def box
# 	grid.each do |e| 
# 		e.map {|i| i = [i][i].first }
# 	end
# end

# 	def singlecell
# 		cell = nil
# 	end
# end

# Box1,2,3 = Row(0,1,2).@columns
# Box4,5,6 = row(3,4,5) 0..8
# Box7,8,9 = row(6,7,8) 0..8 