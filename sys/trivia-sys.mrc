on *:text:!trivia:#: {
  if (%strivia == off) { /msg $chan » Trivia desativado por tempo indeterminado. | halt }
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { /msg $chan @ $+ $nick $+ , você não está cadastrado! | halt }
  if (%trivia == on ) { /msg $chan @ $+ $nick $+ , já existe um trivia ativado, tente novamente em instantes. | halt }
  if ($readini(trivia.ini,@ $+ $nick,data) == $date) { /msg $chan @ $+ $nick $+ , você só pode ativar o trivia uma vez por dia. | halt }
  set %trivia on
  set %tativo $nick
  writeini trivia.ini @ $+ $nick data $date
  /msgall @ $+ $nick ativou seu trivia diário! Ajude-o a responder e ganhe dinheiro.
  /msgall ❔ Iniciando em 10 segundos.
  /timertvvai 1 10 /trivia
}

alias trivia {
  if (%trivia == on) {
    set %tsorteio $read(trivia.txt)
    set %pergunta $gettok( $+ %tsorteio $+ ,1,64)
    set %resposta $gettok( $+ %tsorteio $+ ,2,64) 
    set %tvpremio $rand(20,40)
    set %tvpremio2 $rand(5,20)
    /msgall ❔ Trivia valendo %tvpremio $+ $. Tempo para responder: 1 minuto.
    /msgall ❔ Pergunta: %pergunta
    /timertvinicio 1 60 /tvfim
    /timertvdica1 1 30 /tvdica1
    /timertvfica2 1 45 /tvdica2
  }
}

alias tvfim {
  if (%trivia == on) {
    set %trivia off
    /msgall ❔ Trivia encerrado, ninguém acertou.
    /timertriviaon 1 7200 /trivia
  }
}

alias tvdica1 {
  if (%trivia == on) {
    set %tvdica1 $left( $+ %resposta $+ ,1)
    /msgall ❕ Primeira letra: %tvdica1
  }
}

alias tvdica2 {
  if (%trivia == on) {
    set %tvlen $len(%resposta)
    set %tvmetade $calc(%tvlen / 2)
    set %tvdica2 $left(%resposta,%tvmetade)
    /msgall ❕ Dica: %tvdica2
  }
}

on *:text:*:#:{
  if ($readini(dbz.ini,@ $+ $nick,nick) != $null) && (%trivia == on ) && ($1- == %resposta) {
    set %trivia off
    /timertvinicio off
    set %tvatual $readini dbz.ini @ $+ $nick gold
    set %tvit $readini trivia.ini @ $+ $nick acertos
    writeini trivia.ini @ $+ $nick acertos $calc(%tvit + 1)
    writeini dbz.ini @ $+ $nick gold $calc(%tvatual + %tvpremio)
    msgall ❕ @ $+ $nick acertou e ganhou %tvpremio $+ $!
    msgall ❕ @ $+ %tativo ganhou a bonificação de %tvpremio2 $+ $!
    set %tvatual2 $readini dbz.ini @ $+ %tativo gold
    writeini dbz.ini @ $+ %tativo gold $calc(%tvatual2 + %tvpremio2)
    /toptrivia
  }
}


alias toptrivia {
  set %top 5
  var %x = 1
  while $ini(trivia.ini,%x) {
    var %² = $addtok(%²,$readini(trivia.ini,$ifmatch,acertos) $ifmatch,44)
    inc %x
  }
  var %² = $sorttok(%²,44,nr)
  var %p = 1
  while ($gettok(%²,%p,44) && %p <= %top) {
    var %¬ = $gettok(%²,%p,44)
    set %ki1  $gettok(%¬,1,32)
    set %nome1 $gettok(%¬,2,32)
    set %pos1 %p
    set %rank3 %rank3 %pos1 $+ º %nome1 (  $+ %ki1 $+ ) |
    inc %p
  }      
  /msgall 📚 %rank3 
  unset %ki1
  unset %nome1
  unset %pos1
  unset %racatop
  unset %rank3
}
