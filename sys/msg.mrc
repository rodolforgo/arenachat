alias msgall { 
  if (%loop == 10) { .unset %loop | halt }
  var %cid = $cid, %loop = 1
  while (%loop <= $scon(0)) { scon %loop | if ($server != server) { /ame $1- } | inc %loop |  unset %rank3 | /unset %scouter
    /unset %escudo
    /unset %glorioso
    /unset %semente
    /unset %gym
    /unset %irmandade
    /unset %contraatk
    /unset %sc
    /unset %esc
    /unset %gl
    /unset %se
    /unset %gy
    /unset %ir
    /unset %contra
    /unset %kki
    /unset %kkmostra
    /unset %kkmostra2
    /unset %1strip
    /unset %strip
    /unset %1potara
    /unset %potara
  }
}

alias contrataque { 
  if ($readini(dbz.ini,$1,contra) == sim) {
    set %atacante $readini(dbz.ini,@ $+ $nick,ki)
    set %danocontra $rand(7,19)
    set %dercontra $readini(dbz.ini,@ $+ $nick,der)
    set %vitcontra $readini(dbz.ini,$1,vit)
    writeini dbz.ini @ $+ $nick ki $calc(%atacante - %danocontra)
    writeini dbz.ini $1 registro $nick às $time em $date (você contra-atacou)
    writeini dbz.ini $1 contra não
    /msgall ❗ $1 contra-ataca! @ $nick perde %danocontra de KI. Vitória de $1 $+ !
    writeini dbz.ini @ $+ $nick der $calc(%dercontra + 1)
    writeini dbz.ini $1 vit $calc(%vitcontra + 1) 
    unset %temp
    unset %temp1
    unset %temp2
    unset %temp21
    unset %temp31
    unset %temp3
    unset %temp4
    unset %temp5
    unset %temp6
    unset %rate1
    unset %rate2
    unset %arma 
    unset %arma2 
    unset %armadura
    unset %armadura2
    unset %atk 
    unset %atk2
    unset %def
    unset %def2
    unset %ki
    unset %ki2
    unset %gold
    unset %gold2
    unset %raça
    unset %raça2
    unset %bonus
    unset %bonus2
    unset %bonus1
    unset %bonus21
    unset %atacante 
    halt
  }
}

alias novafase {
  if ($readini(dbz.ini,@ $+ $nick,kaioken) == off) {
    set %novaraca $readini(dbz.ini,@ $+ $nick,raça)
    set %novafase $readini(dbz.ini,@ $+ $nick,fase)
    set %novaki $readini(dbz.ini,@ $+ $nick,ki)
    if (%novaki >= 5500) && (%novaki < 9000) && (%novafase != $readini(fases.ini,%novaraca,1) $+ ) { 
      set %novamudanca $readini(fases.ini,%novaraca,1)
      writeini dbz.ini @ $+ $nick fase %novamudanca
      /msgall @ $+ $nick $+ , você agora é um %novaraca %novamudanca $+ !
    halt }
    if (%novaki >= 9000) && (%novaki < 15000) && (%novafase != $readini(fases.ini,%novaraca,2) $+ ) {  
      set %novamudanca $readini(fases.ini,%novaraca,2)
      writeini dbz.ini @ $+ $nick fase %novamudanca
      /msgall @ $+ $nick $+ , você agora é um %novaraca %novamudanca $+ !
    halt }
    if (%novaki >= 15000) && (%novaki < 25000) && (%novafase != $readini(fases.ini,%novaraca,3) $+ ) { 
      set %novamudanca $readini(fases.ini,%novaraca,3)
      writeini dbz.ini @ $+ $nick fase %novamudanca
      /msgall @ $+ $nick $+ , você agora é um %novaraca %novamudanca $+ !
    halt }
    if (%novaki >= 25000) && (%novaki < 50000) && (%novafase != $readini(fases.ini,%novaraca,4) $+ ) { 
      set %novamudanca $readini(fases.ini,%novaraca,4)
      writeini dbz.ini @ $+ $nick fase %novamudanca
      /msgall @ $+ $nick $+ , você agora é um %novaraca %novamudanca $+ !
    halt }
  }
}
