module Bot
  module DiscordEvents
    module Konus
      extend Discordrb::EventContainer
      message(content:"Merhaba") do |event|
        event.send "Merhaba İnsan"
      end
      message(content:"Naber") do |event|
        event.send "İyidir senden?"
      end
      message(content:"nbr") do |event|
          event.send "ii sndn nbr"
        end
        message(content:"bnd ii") do |event|
            event.send "hm ok"
          end
          message(content:"❤") do |event|
              event.send ":hearts:"
            end
                message(content:"nwlyer") do |event|
                    event.send "En iyi hocadır <3"
                  end
                  message(content:"kodbilen") do |event|
                      event.send "En iyi üstaddır <3"
                    end

               end



  end
end
