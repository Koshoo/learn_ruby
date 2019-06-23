class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds_s = padded(@seconds % 60).to_s
    minutes_s = padded((@seconds % 3600) / 60).to_s
    hours_s = padded(@seconds / 3600).to_s

    @time_string = hours_s + ":" + minutes_s + ":" + seconds_s
    @time_string
  end

  private

  def padded(num)
    if num.to_i < 10
      num = "0" + num.to_s
    else
      num.to_s
    end
  end
end

timer = Timer.new
puts timer.seconds
