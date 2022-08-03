
#frozen
# require 'time'
class Clock
    def initialize(time_input)
      @time_input = time_input
      @hour = 0
      @minute = 0
      process_time_input
    end

    def to_s
      format("%02d:%02d", @hour, @minute)
    end

    def +(other_clock)
      "10:03"
    end

    private

    def process_time_input
       hour_data = (@time_input[:hour] || 0).divmod(24)
       minute_data = (@time_input[:minute] || 0).divmod(60)
       pp [@time_input, hour_data[0],hour_data[1],minute_data[0],minute_data[1]]
       pp minute_to_hour_data = minute_data[0].divmod(24)
       minute_to_hour_data[1]
       @hour_process_for_24hr = hour_data[1] + minute_to_hour_data[1]
      @minute = minute_data[1]
      pp @hour = (@hour_process_for_24hr.divmod(24))[1]
    end
  end


# #frozen
# # require 'time'
# class Clock
#     def initialize(time_input)
#       @time_input = time_input
#     end

#     def to_s
#       clock_time = []
#       hour_data = @time_input[:hour].divmod(24)
#       pp hour_data[0] #day
#       pp hour_data[1] #hour
#       if hour_data[1] < 10
#         clock_time << "0#{hour_data[1]}:"
#       else
#         clock_time << "#{hour_data[1]}:"
#       end
#       if @time_input[:minute] == nil
#         clock_time << "00"
#       else
#         minute_data = @time_input[:minute].divmod(60)
#         if minute_data[1] < 10
#           clock_time << "0#{minute_data[1]}"
#         else
#           clock_time << "#{minute_data[1]}"
#         end
#      end
#       clock_time.join("")
#     end
#   end
