class Board

	def initialize
		@input = "409075310130600807005200096016009720080020606007430000500107040720048009603050008"
	end


	def grid
		@grid = (0..80).to_a
		
	end

	def cell
		@cell 
	end


	def row

		row_array = grid.each_slice(9).to_a

		
	end

	def column
		@columns = (0..8).map do |col|
			@grid.select{|i| i % 9 == col}
		end
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

