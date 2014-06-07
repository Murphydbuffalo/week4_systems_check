class BoundingArea
	attr_reader :boxes
	
	def initialize(boxes)
    @boxes = boxes
	end

	def contains_point?(x, y)
    boxes.any? do |box|
      box.contains_point?(x, y)
    end
	end
end
