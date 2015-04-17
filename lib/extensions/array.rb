class Array
  def sum
    inject(0.0) { |sum, n| sum += n }
  end

  def mean
    sum / count
  end
end
