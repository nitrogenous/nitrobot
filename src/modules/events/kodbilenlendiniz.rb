module Bot
  module DiscordEvents
    module Merhaba
      extend Discordrb::EventContainer
      message(content:"Merhaba",from: "KodBilenAdam") do |event|
        event.send "Merhaba Çağatay"
      end
    end
  end
end
