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
        message(content:"ii sndn nbr cnm") do |event|
            event.send "hm ok"
          end
          message(content:"❤") do |event|
              event.send "<:hearts:344351725211353089>"
            end
              message(content:"avukat") do |event|
                  event.send "G.tünüzü s.keriz <:smile:344579724850233358> -Avukat"
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
