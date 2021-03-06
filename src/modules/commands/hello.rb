module Bot
  module DiscordCommands
    # Responds with "Pong!".
    # This used to check if bot is alive
    module Hello
      extend Discordrb::Commands::CommandContainer
      command :hello do |event, args|
           event.send 'Hello World!'
           puts args

      end
    end
  end
end
