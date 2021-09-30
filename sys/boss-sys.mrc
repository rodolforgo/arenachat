on *:text:!boss:#: {
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { /msg $chan @ $+ $nick $+ , você não está cadastrado! | halt }
  if (%desafio == on ) { /msg $chan @ $+ $nick $+ , já existe um boss ativo, tente novamente em instantes. | halt }
  if ($readini(trivia.ini,@ $+ $nick,data) == $date) { /msg $chan @ $+ $nick $+ , você só pode desafiar o boss uma vez por dia. | halt }
  set %desafio on
  set %tativo $nick
  writeini trivia.ini @ $+ $nick data $date
  /msgall ⚔️ $nick desafiou um boss!
  /msgall ⚔️ Em 10 segundos começará o confronto.
  /timertvvai 1 10 /soltar_pris
}

alias soltar_boss { 
  set %pri.ativo sim
  set %pri $ini(boss.ini,$rand(1,$ini(boss.ini,0)))
  writeini boss.ini %pri hp $readini(boss.ini,%pri,hp2)
  /msgall ⚔️ $readini(boss.ini,%pri,nome) foi desafiado por %tativo $+ ! (HP: $readini(boss.ini,%pri,hp2) $+ )
  /msgall ⚔️ Para atacá-lo, digite !Atacar
  remini boss.ini %pri atacou
  timerfuga 1 150 fugiu_azkaban
}
alias fugiu_azkaban {
  remini boss.ini %pri atacou
  /inc %ivit
  /msgall $readini(boss.ini,%pri,nome) conseguiu fugir!
  /msgall Placar atual: Guerreiros %pvit x %ivit Invasores.
  set %pri.ativo nao
  unset %pri
  set %desafio off
}
alias fim_boss {
  timerfuga off
  var %atacaram = $readini(boss.ini,%pri,atacou)
  var %wd = 1
  var %wd1 = $numtok(%atacaram,32)
  while (%wd <= %wd1) { 
    var %pa = $gettok(%atacaram,%wd,32)
    writeini dbz.ini %pa KI $calc($readini(dbz.ini,%pa,KI) + $readini(boss.ini,%pri,din))
    inc %wd
  }
  remini boss.ini %pri atacou
  /inc %pvit
  /msgall $readini(boss.ini,%pri,nome) foi derrotado! Todos os guerreiros que participaram do confronto ganharam $readini(boss.ini,%pri,din) de KI.
  /msgall Placar atual: Guerreiros %pvit x %ivit Invasores.
  set %desafio off
  set %pri.ativo nao
  unset %pri
}

on *:text:!Atacar:#: {
  if (%toff == off) && ($server == tmi.twitch.tv) && ($chan == #xforgo) { /msg $chan » ArenaIRC temporariamente transferido para: https://www.twitch.tv/ArenaIRC | halt }
  if (%pri.ativo != sim) { halt }
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { halt }
  if ($nick isin $readini(boss.ini,%pri,atacou)) && ($readini(dbz.ini,@ $+ $nick,ataqueextra) == não) { /msgall @ $+ $nick $+ , você já gastou seus ataques! | halt }
  var %mag = $readini(dbz.ini,@ $+ $nick,ki)
  var %dano = $int($calc($rand($calc($len(%mag) * $len(%mag)),$calc($len(%mag) * 10)) + (%mag / $replace($len(%mag),2,10,3,100,4,1000,5,10000)) + $len(%mag)))
  writeini boss.ini %pri hp $calc($readini(boss.ini,%pri,hp) - %dano)
  /msgall ⚔️ @ $+ $nick atacou $readini(boss.ini,%pri,nome) causando %dano de dano. (HP: $readini(boss.ini,%pri,hp) $+ / $+ $readini(boss.ini,%pri,hp2) $+ )
  if ($nick !isin $readini(boss.ini,%pri,atacou)) { writeini boss.ini %pri atacou @ $+ $nick $readini(boss.ini,%pri,atacou) }
  if ($nick isin $readini(boss.ini,%pri,atacou)) && ($readini(dbz.ini,@ $+ $nick,ataqueextra) == sim) { writeini dbz.ini @ $+ $nick ataqueextra não }
  var %prob = $rand(1,$readini(boss.ini,%pri,prob))
  if (%prob == $readini(boss.ini,%pri,prob)) { 
    var %pevig = $rand(1,5)
    writeini dbz.ini @ $+ $nick ki $calc($readini(dbz.ini,@ $+ $nick,ki) - %pevig)
    /msgall ⚔️ $readini(boss.ini,%pri,nome) contra-ataca $nick retirando %pevig do seu KI.
  }
  if ($readini(boss.ini,%pri,hp) <= 0) { 
    fim_boss
  }
  halt
}
