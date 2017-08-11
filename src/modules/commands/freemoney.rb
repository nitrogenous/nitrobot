module Bot
  module DiscordCommands
    # Responds with "Pong!".
    # This used to check if bot is alive
    module Listele
      extend Discordrb::Commands::CommandContainer
      command :list do |event|
      m =  BOT.servers
      event.send "#{m}"


      end
    end
  end
end
