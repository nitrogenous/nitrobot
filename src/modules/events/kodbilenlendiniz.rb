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
              event.send "❤"
            end
                message(content:"nwlyer") do |event|
                    event.send "En iyi hocadır <3"
                  end
                  message(content:"kodbilen") do |event|
                      event.send "En iyi üstaddır <3"
                    end
                    message(content:"runo") do |event|
                        event.send "Adamın dibidir en iyi oyuncudur ❤"
                      end
                      message(content:"Sa") do |event|
                          event.send "As"
                        end
                        message(content:"sa") do |event|
                            event.send "as"
                          end
               end



  end
end
