module Bot
  module DiscordCommands
    # Responds with "Pong!".
    # This used to check if bot is alive
    module Topla
      extend Discordrb::Commands::CommandContainer
      command :topla do |event, *args|
        m = event.send "#{args[0]} ile #{args[1]} toplaniyor."
        sleep(1)
        m.edit "#{(args[0].to_i + args[1].to_i)}\nÇalıştı <:ruby:338686557584359435>"
      end
    end
  end
end
