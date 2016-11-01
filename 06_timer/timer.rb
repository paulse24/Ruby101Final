class Timer
attr_accessor :seconds

def initialize
  @seconds = 0
end

def time_string 
seconds = @seconds
time_array = [0, 0, 0]

  if seconds/3600 >= 10
    time_array[0] = seconds/3600
    seconds = seconds - (seconds/3600)*3600
  else
    time_array[0] = "0" + (seconds/3600).to_s
    seconds = seconds - (seconds/3600)*3600
  end

  if seconds/60 >= 10
    time_array[1] = seconds/60
    seconds = seconds - (seconds/60)*60
  else
    time_array[1] = "0" + (seconds/60).to_s
    seconds = seconds - (seconds/60)*60
  end

  if seconds >= 10
    time_array[2] = seconds
  else
    time_array[2] = "0" + seconds.to_s
  end

  output = time_array.join(":")
end

end
