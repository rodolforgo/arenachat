on *:text:*:#:{
  if ($server == tmi.twitch.tv) { /scon 2 msg # < $+ $nick $+ > $strip($1-) }
  ;if ($server == irc.server.com) { { /scon 1 msg # < $+ $nick $+ > $strip($1-)  }
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { halt }
  /set %dropc $rand(1,1000)
  if (%dropc > 7 ) && (%dropc < 17) {
    set %drop $read(itens1.txt)
    if (%drop == Scouter) && ($readini(itens.ini, @ $+ $nick,scouter) == 1) { halt } 
    if (%drop == Bolsa-de-dinheiro) {
      set %satual $readini dbz.ini @ $+ $nick gold
      set %sganho $rand(20,60)
      writeini dbz.ini @ $+ $nick gold $calc(%satual + %sganho)
      /msg $chan 💰 @ $+ $nick $+ , você dropou uma bolsa de ouro com $ $+ %sganho $+ ! 
      halt     
    }
    if ($readini(itens.ini, @ $+ $nick,%drop) >= 5) { halt }
    set %dropatual $readini itens.ini @ $+ $nick %drop
    writeini itens.ini @ $+ $nick %drop $calc(%dropatual + 1)
    /msg $chan 📥 @ $+ $nick $+ , você dropou o item $replace(%drop,-, $+ $chr(32) $+ ) $+ ! 
    halt
  }
  if (%dropc <= 6 ) { 
    set %drop $read(itens2.txt) 
    if ($readini(itens.ini, @ $+ $nick,%drop) >= 5) { halt }
    set %dropatual $readini itens.ini @ $+ $nick %drop
    writeini itens.ini @ $+ $nick %drop $calc(%dropatual + 1)
  /msg $chan 📥 @ $+ $nick $+ , você dropou o item $replace(%drop,-, $+ $chr(32) $+ ) $+ ! }
}
