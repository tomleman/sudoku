require '../lib/board'



class Cell

	def initialize(value)
		@value = value
	end
	
	def value
		@value
	end	

	def solved?
		value != 0
	end

	def update(cells)
		# neighbours => [<Cell @value=5>, <Cell @value=6>...]
		values_used = cells.map{|cell| cell.value}.uniq # => [5,6,9,1]
		candidates = (1..9).to_a - values_used
		@value = candidates.first if candidates.length == 1
	end
	# def grid
	# 	@grid = Board.new.grid
	# end

	# def cell_value
		
	# 	# cell = 0
	# 	grid.each do | i |
	# 		cell = i
	# 	end 
	# end

end