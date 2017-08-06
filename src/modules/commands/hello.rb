module Bot
  module DiscordCommands
    # Responds with "Pong!".
    # This used to check if bot is alive
    module Hello
      extend Discordrb::Commands::CommandContainer
      command :hello do |event|
           event.send 'Hello World!'
      
      end
    end
  end
end
