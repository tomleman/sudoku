require '../lib/cell'


class Box
	
	def initialize(cell)
		@cell = cell
	end

		def cell
			@cell
		end

		def row_value
			row_value = cell / 9
		end

		# Find column index
		def column_value
		column_value = cell % 9
		end


		# vv-- row index --vv


		# Find the first number in the row
		def row_first
			row_value * 9
		end
	
		# Find the Box Row (0..2)
		def box_row_index
			cell / 27 
		end
		
		# Find the box column (0..2)
		def box_column_index
			column_value / 3    #3 is number of columns in a box
		end

			def box_first
			box_row_index * 27 + (box_column_index * 3)
		end

		# def box_index 
		# 	row_first + column_value
		# end


		# def box_first_index # Index of the BOX row
		# 	cell / 27
		# end
		
	

		#Find the corner box no based on the cell

	end