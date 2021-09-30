on *:text:!kaioken:#: {
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { /msg $chan @ $+ $nick $+ , você não está cadastrado! | halt }
  if ($readini(dbz.ini,@ $+ $nick,kaioken) == on) { /msg $chan @ $+ $nick $+ , falta(m) $tempo_certo($timer(kaioken $+ $nick $+ ).secs) para acabar seu Kaioken! | halt }
  if ($readini(itens.ini,@ $+ $nick,kaioken) == $null) { /msg $chan @ $+ $nick $+ , você não possui Kaioken! | halt }
  if ($readini(itens.ini,@ $+ $nick,kaioken) == 0) && ($readini(kaioken.ini,@ $+ $nick,data) == $date) { /msg $chan @ $+ $nick $+ , você já gastou seu Kaioken diário e não possui o item! | halt }
  if ($readini(kaioken.ini,@ $+ $nick,data) != $date) {
    set %kitrue $readini(dbz.ini,@ $+ $nick,ki)
    writeini dbz.ini @ $+ $nick KItrue %kitrue
    set %kikaioken $calc(%kitrue * 2)
    writeini dbz.ini @ $+ $nick KI %kikaioken
    writeini dbz.ini @ $+ $nick Kaioken on
    /msgall 🎆 @ $+ $nick utilizou o Kaioken diário e seu Ki duplicou temporariamente (30 minutos)!
    /msg $chan 🎆 @ $+ $nick $+ , você ganhou um ataque extra contra inimigos e seu "!atacar" foi zerado!
    writeini dbz.ini @ $+ $nick ataque sim
    writeini dbz.ini @ $+ $nick ataqueextra sim
    writeini kaioken.ini @ $+ $nick data $date
    /timerkaioken $+ $nick 1 1800 /kkfim $nick
    /timerataque $+ $nick off
    halt
  }
  if ($readini(itens.ini,@ $+ $nick,kaioken) >= 1) {
    set %kkatual $readini(itens.ini,@ $+ $nick,kaioken)
    set %kitrue $readini(dbz.ini,@ $+ $nick,ki)
    writeini dbz.ini @ $+ $nick KItrue %kitrue
    set %kikaioken $calc(%kitrue * 2)
    writeini dbz.ini @ $+ $nick KI %kikaioken
    writeini itens.ini @ $+ $nick Kaioken $calc(%kkatual - 1)
    writeini dbz.ini @ $+ $nick Kaioken on
    /msgall 🎆 @ $+ $nick utilizou o Kaioken diário e seu Ki duplicou temporariamente (60 minutos)!
    /msg $chan 🎆 @ $+ $nick $+ , você ganhou um ataque extra contra inimigos e seu "!atacar" foi zerado!
    writeini dbz.ini @ $+ $nick ataque sim
    writeini dbz.ini @ $+ $nick ataqueextra sim
    writeini kaioken.ini @ $+ $nick data $date
    /timerkaioken $+ $nick 1 3600 /kkfim $nick
    /timerataque $+ $nick off
  }
}

alias kkfim {
  if ($readini(dbz.ini,@ $+ $1,kaioken) == on) {
    set %kitruefinal $readini(dbz.ini,@ $+ $1,kitrue)
    set %kifalse $readini(dbz.ini,@ $+ $1,ki)
    writeini dbz.ini @ $+ $1 ki $calc(%kifalse - %kitruefinal)
    writeini dbz.ini @ $+ $1 Kaioken off
    remini dbz.ini @ $+ $1 KItrue
    writeini dbz.ini @ $+ $nick ataqueextra não
    /msgall 🎆 @ $+ $1 $+ , o efeito do seu Kaioken encerrou!
  }
}

alias semtempo {
  if ($timer(ataque $+ $1) == $null) { writeini dbz.ini @ $+ $1 ataque sim }
  if ($timer(camara $+ $1) == $null) { writeini dbz.ini @ $+ $1 camara sim }
  if ($timer(treino $+ $1) == $null) { writeini dbz.ini @ $+ $1 treino sim }
}

alias semkaioken {
  if ($timer(kaioken $+ $1 $+ ) == $null) && ($readini(dbz.ini,@ $+ $1,kaioken) == on) {
    set %kitruefinalk $readini(dbz.ini,@ $+ $1,kitrue)
    set %kifalsek $readini(dbz.ini,@ $+ $1,ki)
    writeini dbz.ini @ $+ $1 ki $calc(%kifalsek - %kitruefinalk)
    writeini dbz.ini @ $+ $1 Kaioken off
    writeini dbz.ini @ $+ $1 ataqueextra não
    /msg forgo sem kaioken de $1
  }
}
