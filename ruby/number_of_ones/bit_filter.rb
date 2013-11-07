class BitFilter 

	def to_bit_array(int)
		byteCount = (int < 256 ? 1 : int/256)
		Array.new(8*byteCount) { |i| int[i] }.reverse!
	end

	def count_ones(int)
		count_bit_type(int, 1)
	end

	def count_zeros(int)
		count_bit_type(int, 0)
	end

	def count_bit_type(int, bit_type)
		count = [0,0]
		to_bit_array(int).each { |bit| bit == 0 ? count[0]+=1 : count[1]+=1 }
		bit_type ? count[bit_type] : count
	end

end

class BitArray
	class Integer
		
		def initialize(int)
			@int = int
			@bit_array = create_bit_array
		end

		def to_i
			@int
		end

		def to_s
			@bit_array.join("")
		end

		def count(bit_type=nil)
			@count ||= count_bits
			bit_type ? @count[bit_type] : @count[:all] 
		end

		def count_bits
			bit_num = @bit_array.legth
			bit_count = {0 => 0, 1 => 0, :all => bit_num }
			@bit_array.each do |bit|
				bit == 0 ? bit_count[0]+=1 : bit_count[1]+=1
			end
			@count = bit_count
			
		end

	private
		def create_bit_array
			byteCount = (@int < 256 ? 1 : @int/256)
			Array.new(8*byteCount) { |i| @int[i] }.reverse!
		end

	end
end