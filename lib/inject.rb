class Array

	def inject2
		memo = self[0] 
		for value in self[1..-1]
			memo = yield memo, value
		end
		memo
	end

	def inject3
		status = true
		self.each do |word|
			status = status and yield word
		end
	status
	end


end 