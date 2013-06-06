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
		result = [column_no]
		8.times do |i|
			result << 9 + result.last
		end
		result.map { |index| @grid[index] } 
	end

		# column no + 9. 9times == array
					

	def boxes(cell_index)
		box_column_index = (cell_index % 9) / 3
		box_row_index = cell_index / 27 
		
		box_first = box_row_index * 27 + box_column_index * 3
		
		# sum = [box_first,1,1,7,1,1,7,1,1].map {|index| index + index}
		sum = [1,1,7,1,1,7,1,1].inject([box_first]) {|indexes, offset| indexes << offset + indexes.last}
		sum.map { |index| @grid[index] }		
	end


end
