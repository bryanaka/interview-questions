class Fibonacci
	@@result_history = {0 =>0, 1=>1}
	
	def self.nth_number(n)
		return @@result_history[n] if @@result_history.has_key?(n)
		@@result_history[n] = nth_number(n-1) + nth_number(n-2)
	end

	def self.nth_number_iterative(n)
		return n if n == 0 or n == 1
		i = 2
		prevPrev = 0;
    prev = 1;
    result = 0;
		while i <= n
      result = prev + prevPrev;
      prevPrev = prev;
      prev = result;
      i += 1
		end
    return result;
	end
end