module Bot
  module DiscordCommands
    # Responds with "Pong!".
    # This used to check if bot is alive
    module Ping
      extend Discordrb::Commands::CommandContainer
      command :kappastorm do |event|
      m = event.send "Adamdır"
      sleep(0.5)
      m.edit "Kappastorm <3"
      end
    end
  end
end
