class Board

	def input
		@input = "409075310130600807005200096016009720080020606007430000500107040720048009603050008"
		
	end

	def input_count
		raise "Needs the length to be 81" if input.length != 81
		@input.length
		
	end

	def grid

		@grid = input.split("").map {|i| i.to_i}.each_slice(9).to_a
		
			@grid.map {|num| 
				num = num.each_slice(3).to_a}
	end

	def row	
		grid.map {|i| i.join}
	end

# def box
# 	board.each do |e| 
# 		e.map {|i| i = i.first | }
# end
# puts box
# end

	def singlecell
		cell = nil
	end
end

