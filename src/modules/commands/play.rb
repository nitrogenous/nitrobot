module Bot
 module DiscordCommands
    $ses = 0.3
  
    module Memati
      extend Discordrb::Commands::CommandContainer
      command :memati do |event, args|
        if args.to_i == 0
          args = 1
        end
        BOT.game = "Kulaklar ile"
        channel = event.user.voice_channel
        if channel == nil
          event.send "Öncelikle bir kanalda bulunmalısınız!"
        else
        server_id = event.user.server.id
        BOT.voice_connect(channel)
        event.voice.filter_volume = $ses
        args.to_i.times do
        event.voice.play_file('data/illumemati.mp3')
        end
        BOT.voice_destroy(server_id)
        event.message.create_reaction("👍")
        BOT.game = "Ruby ile"
        nil
      end
      end
    end
    module Saxguy
      extend Discordrb::Commands::CommandContainer
      command :saxguy do |event, args|
        if args.to_i == 0
          args = 1
        end
        BOT.game = "Kulaklar ile"
        channel = event.user.voice_channel
        if channel == nil
          event.send "Öncelikle bir kanalda bulunmalısınız!"
        else
        server_id = event.user.server.id
        BOT.voice_connect(channel)
        event.voice.filter_volume = $ses
        args.to_i.times do
        event.voice.play_file('data/Saxguy.mp3')
        end
        BOT.voice_destroy(server_id)
        event.message.create_reaction("👍")
        BOT.game = "Ruby ile"
        nil
      end
      end
    end
    module Fusrodah
      extend Discordrb::Commands::CommandContainer
      command :fusrodah do |event, args|
        if args.to_i == 0
          args = 1
        end
        BOT.game = "Kulaklar ile"
        channel = event.user.voice_channel
        if channel == nil
          event.send "Öncelikle bir kanalda bulunmalısınız!"
        else
        server_id = event.user.server.id
        BOT.voice_connect(channel)
        event.voice.filter_volume = $ses
        args.to_i.times do
        event.voice.play_file('data/fusrodah.mp3')
        end
        BOT.voice_destroy(server_id)
        event.message.create_reaction("👍")
        BOT.game = "Ruby ile"
        nil
      end
      end
    end
    module Flute
      extend Discordrb::Commands::CommandContainer
      command :flüt do |event, args|
        if args.to_i == 0
          args = 1
        end
        BOT.game = "Kulaklar ile"
        channel = event.user.voice_channel
        if channel == nil
          event.send "Öncelikle bir kanalda bulunmalısınız!"
        else
        server_id = event.user.server.id
        BOT.voice_connect(channel)
        event.voice.filter_volume = $ses
        args.to_i.times do
        event.voice.play_file('data/flute.mp3')
        end
        BOT.voice_destroy(server_id)
        event.message.create_reaction("👍")
        BOT.game = "Ruby ile"
        nil
      end
      end
    end
    module Darkness
      extend Discordrb::Commands::CommandContainer
      command :darkness do |event, args|
        if args.to_i == 0
          args = 1
        end
        BOT.game = "Kulaklar ile"
        channel = event.user.voice_channel
        if channel == nil
          event.send "Öncelikle bir kanalda bulunmalısınız!"
        else
        server_id = event.user.server.id
        BOT.voice_connect(channel)
        event.voice.filter_volume = $ses
        args.to_i.times do
        event.voice.play_file('data/darkness.mp3')
        end
        BOT.voice_destroy(server_id)
        event.message.create_reaction("👍")
        BOT.game = "Ruby ile"
        nil
      end
      end
    end
    module Russian
      extend Discordrb::Commands::CommandContainer
      command :vodka do |event, args|
        if args.to_i == 0
          args = 1
        end
        BOT.game = "Kulaklar ile"
        channel = event.user.voice_channel
        if channel == nil
          event.send "Öncelikle bir kanalda bulunmalısınız!"
        else
        server_id = event.user.server.id
        BOT.voice_connect(channel)
        event.voice.filter_volume = $ses
        args.to_i.times do
        event.voice.play_file('data/russian.mp3')
        end
        BOT.voice_destroy(server_id)
        event.message.create_reaction("👍")
        BOT.game = "Ruby ile"
        nil
      end
      end
    end
    module Theyseeme
      extend Discordrb::Commands::CommandContainer
      command :kolaydı do |event, args|
        if args.to_i == 0
          args = 1
        end
        BOT.game = "Kulaklar ile"
        channel = event.user.voice_channel
        if channel == nil
          event.send "Öncelikle bir kanalda bulunmalısınız!"
        else
        server_id = event.user.server.id
        BOT.voice_connect(channel)
        event.voice.filter_volume = $ses
        args.to_i.times do
        event.voice.play_file('data/theyseeme.mp3')
        end
        BOT.voice_destroy(server_id)
        event.message.create_reaction("👍")
        BOT.game = "Ruby ile"
        nil
      end
      end
    end
    module Earrape
      extend Discordrb::Commands::CommandContainer
      command :earrape do |event, args|
        break unless event.user.id == CONFIG.owner

        if args == "aç"
          $s1 = $ses
          $ses = 999
          event.send "Dikkat Earrape Tehlikesi!"
          nil
        elsif args == "kapat"
            event.send "Earrape Tehlikesi Geçmiştir!"
          $ses = $s1.to_f
          nil
        else
          event.send "Hatalı bir komut girdiniz lütfen ?earrape aç/kapat şeklinde kullanınız"
          nil
        end
      end
    end
      module Sesayar
        extend Discordrb::Commands::CommandContainer
        command :ses do |event, args|
            break unless event.user.id == CONFIG.owner || event.user.id == 107292203696525312
BOT.game = "Ses Ayarı ile"

       if args.to_f > 1.0
          event.send "Kardeş kırmaya mı çalışıyorsun?"
       elsif args.to_f < 0.0
          event.send "fizik.dll stopped working."
        else
          $ses = args.to_f

          nil

          case $ses
          when 0.0...0.1
              event.send ":mute::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
   when 0.1...0.2
      event.send ":speaker::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
    when 0.2...0.3
      event.send ":speaker::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
   when 0.3...0.4
      event.send ":speaker::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
    when 0.4...0.5
       event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
     when 0.5...0.6
        event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
      when 0.6...0.7
           event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
         when 0.7...0.8
            event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
          when 0.8...0.9
             event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
           when 0.9...1.0
              event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign: **#{$ses.round(2)}**"
            when 1.0
               event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle: **#{$ses.round(2)}**"
             end
             event.message.create_reaction("👍")
            BOT.game = "Ruby ile"
            nil


        end

        end
      end
      module Seskac
        extend Discordrb::Commands::CommandContainer
        command :ses? do |event|
          BOT.game = "Ses ile"
       if $ses.to_f > 1.0
         event.send "**Dikkat Earrape Tehlikesi!**\n:speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle: **#{$ses.round(2)}**"
       else
          case $ses
          when 0.0...0.1
              event.send ":mute::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
   when 0.1...0.2
      event.send ":speaker::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
    when 0.2...0.3
      event.send ":speaker::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
   when 0.3...0.4
      event.send ":speaker::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
    when 0.4...0.5
       event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
     when 0.5...0.6
        event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
      when 0.6...0.7
           event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
         when 0.7...0.8
            event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
          when 0.8...0.9
             event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign::heavy_minus_sign: **#{$ses.round(2)}**"
           when 0.9...1.0
              event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle::heavy_minus_sign: **#{$ses.round(2)}**"
            when 1.0
               event.send ":speaker::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::heavy_minus_sign::red_circle: **#{$ses.round(2)}**"
             end
end

               event.message.create_reaction("👍")
BOT.game = "Ruby ile"
nil
     end
   end
  end
end
