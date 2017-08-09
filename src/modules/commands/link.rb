module Bot
  module DiscordCommands
    # Responds with "Pong!".
    # This used to check if bot is alive
    module Link
      extend Discordrb::Commands::CommandContainer
      command :link do |event|
        m = event.send "Demek sende beni sunucunda istiyorsun. Yani kim istemez günümüzün en harika dili ile yazılmış bir botu <:sunglasses:343826992128327691>"
        sleep(3)
        s1 = 0
        s2 = 1
        while s1 <= s2 do
          m.edit "Her şeyi hazır ediyorum\n<:ruby:338686557584359435>"
          sleep(0.1)
          m.edit "Her şeyi hazır ediyorum\n<:ruby:338686557584359435> <:ruby:338686557584359435>"
          sleep(0.1)
          m.edit "Her şeyi hazır ediyorum\n<:ruby:338686557584359435> <:ruby:338686557584359435> <:ruby:338686557584359435>"
          sleep(0.1)
          m.edit "Her şeyi hazır ediyorum\n <:ruby:338686557584359435> <:ruby:338686557584359435> <:ruby:338686557584359435> <:ruby:338686557584359435>"
          sleep(0.1)
          m.edit "Her şeyi hazır ediyorum\n <:ruby:338686557584359435> <:ruby:338686557584359435> <:ruby:338686557584359435> <:ruby:338686557584359435> <:ruby:338686557584359435>"
    
          sleep (0.1)
          s1+=1
        end
        sleep(0.5)
        m.edit "Buyrun efendim https://goo.gl/36CRLd"
      end
    end
  end
end
