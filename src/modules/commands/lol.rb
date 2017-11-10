module Bot
  module DiscordCommands

    module Lol
      extend Discordrb::Commands::CommandContainer
      command :lol do |event, *args|
      argss = args.join
      nick =   URI.escape(argss)
      lolapi = 'RGAPI-17199795-080e-424d-93f0-1928825c6195'
      url = 'https://tr1.api.riotgames.com/lol/summoner/v3/summoners/by-name/' +nick+ '?api_key=' +lolapi
      sex = HTTParty.get(url)
      icerik = JSON.parse(sex.body)
      id = icerik['id']
      ids = id.to_s
      urll = 'https://tr1.api.riotgames.com/lol/league/v3/positions/by-summoner/' +ids+ '?api_key=' +lolapi
      xsex = HTTParty.get(urll)
    #  icerik1 = JSON.parse(xsex.body)
    #  lul1 = icerik1[0]
    #  lul2 = icerik1[1]
      #event.send "#{icerik.to_s}"
      #event.send "#{icerik1[0].to_s}"
      #  event.send "#{icerik1[1].to_s}"
      icerik1 = JSON.parse(xsex.body)
               lul1 = icerik1[0]["tier"].to_s
               lul3 = icerik1[0]["rank"].to_s
               lul2 = icerik1[1]["tier"].to_s
               lul4 = icerik1[1]["rank"].to_s
               event.send "Esnek Dereceli: #{lul1} #{lul3}"
               event.send "Tek/Çift: #{lul2} #{lul4}"
      end
    end
  end
end
