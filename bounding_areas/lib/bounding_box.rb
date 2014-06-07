class BoundingBox
  attr_reader :width, :height, :left, :bottom

  def initialize(left, bottom, width, height)
  	@left = left.to_f
  	@bottom = bottom.to_f
  	@width = width.to_f
  	@height = height.to_f
  end

  def right
    right_edge = left + width
  end

  def top
    top_edge = bottom + height
  end

  def within_x_axis?(x)
    x >= left && x <= right
  end

  def within_y_axis?(y)
    y >= bottom && y <= top
  end

  def contains_point?(x, y)
    within_x_axis?(x) && within_y_axis?(y)
  end

end
