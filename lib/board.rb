require '../lib/box'

class Board

	def initialize(input)
		@grid = input.split('').map{|n| Cell.new(n.to_i)}
	end


	def rows(cell_index)
		column_no = cell_index % 9

		first = cell_index - column_no 
		
		return @grid[first,9]

	end
	def columns(cell_index)
		
		column_no = cell_index % 9
		result = []
		8.times do |i|
			result << 9 + column_no.last
		end 
		

	end

		# column no + 9. 9times == array
					

	def boxes(cell_index)
		column_no = cell_index % 9
		box_row_index = cell_index / 27 
		box_column_index = column_no / 3  
		box_first = box_row_index * 27 + (box_column_index * 3)
		return @grid.box_first
		
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