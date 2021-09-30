on *:text:!top eu:#: {
  topnick $nick
}

alias topnick {  
  set %top 200
  var %x = 1
  while $ini(dbz.ini,%x) {
    var %² = $addtok(%²,$readini(dbz.ini,$ifmatch,ki) $ifmatch,44)
    inc %x
  }
  var %² = $sorttok(%²,44,nr)
  var %p = 1
  while ($gettok(%²,%p,44) && %p <= %top) {
    var %¬ = $gettok(%²,%p,44)
    if ($gettok(%¬,2,32) == @ $+ $1) { //set %topnick %p | /topnick2 | halt }
    inc %p
  }
}

alias topnick2 {
  /set %topup $calc(%topnick + 2)
  /set %topdown $calc(%topnick - 2)
  if (%topdown <= 0) { /set %topdown 1 }
  set %top %topup
  var %x = 1
  while $ini(dbz.ini,%x) {
    var %² = $addtok(%²,$readini(dbz.ini,$ifmatch,ki) $ifmatch,44)
    inc %x
  }
  var %² = $sorttok(%²,44,nr)
  var %p = %topdown
  while ($gettok(%²,%p,44) && %p <= %top) {
    var %¬ = $gettok(%²,%p,44)
    set %ki1  $gettok(%¬,1,32)
    set %nome1 $gettok(%¬,2,32)
    set %pos1 %p
    set %racatop2 $readini(dbz.ini,%nome1,fase)
    set %titulotop1 $readini(dbz.ini,%nome1,titulo)
    set %rank3 %rank3 %pos1 $+ º %nome1 $+ %titulotop1 ( $+ %racatop2 $+ / $+ %ki1 $+ ) |
    inc %p
  }      
  /msg $chan 🔢 %rank3 
  unset %ki1
  unset %titulotop1
  unset %nome1
  unset %pos1
  unset %rank3
}

alias tempo_certo {
  var %t = $duration($1)
  %t = $replace(%t,wk,semana,day,dia,hr,hora,min,minuto,sec,segundo)
  %t = $mid($regsubex(%t,/([0-9]+)([a-z]+)/g,\1 \2 $+ $chr(44)),1,-1)
  if ($1 > 60) %t = $gettok(%t,1- $+ $calc($numtok(%t,44) - 1),44) e $gettok(%t,$numtok(%t,44),44)
  return %t
}

on *:text:!top:#: {
  if (%toff == off) && ($server == tmi.twitch.tv) && ($chan == #xforgo) { /msg $chan » ArenaIRC temporariamente transferido para: https://www.twitch.tv/ArenaIRC | halt }
  set %top 10
  var %x = 1
  while $ini(dbz.ini,%x) {
    var %² = $addtok(%²,$readini(dbz.ini,$ifmatch,ki) $ifmatch,44)
    inc %x
  }
  var %² = $sorttok(%²,44,nr)
  var %p = 1
  while ($gettok(%²,%p,44) && %p <= %top) {
    var %¬ = $gettok(%²,%p,44)
    set %ki1  $gettok(%¬,1,32)
    set %nome1 $gettok(%¬,2,32)
    set %pos1 %p
    set %racatop $readini(dbz.ini,%nome1,fase)
    set %titulotop $readini(dbz.ini,%nome1,titulo)
    set %rank3 %rank3 %pos1 $+ º %nome1 $+ %titulotop ( $+ %racatop $+ / $+ %ki1 $+ ) |
    inc %p
  }      
  /msg $chan 🔝 %rank3 
  unset %titulotop
  unset %ki1
  unset %nome1
  unset %pos1
  unset %racatop
  unset %rank3
}
