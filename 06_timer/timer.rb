class Timer
  #write your code here
  attr_accessor :seconds, :time_string
  
  def initialize
  	@seconds = 0
  end
  

  def time_string
    @time_string = pretty_print(@seconds)
  end
 
  def pretty_print (number)
  	hours = number / 3600
  	hours = "0" + hours.to_s if hours.to_s.length == 1
  	minutes = (number % 3600) / 60
  	minutes = "0" + minutes.to_s if minutes.to_s.length == 1
  	secs = (number % 3600) % 60
  	secs = "0" + secs.to_s if secs.to_s.length == 1
  	"#{hours}:#{minutes}:#{secs}"  
  end
end
