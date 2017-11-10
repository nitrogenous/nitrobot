module Bot
  module DiscordCommands
    module IO
      extend Discordrb::Commands::CommandContainer
      command :play do |event, args|
      link = URI.escape(args)
      ch = event.user.voice_channel
      svid = event.user.server.id
      encodedio = event.voice.encode_io(link,'')
      BOT.voice_connect(ch)
      event.voice.play_io(encodedio)
      Bot.voice_destroy(svid)
      nil
      end

  end
  end
end
