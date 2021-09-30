; ArenaChat mIRC Bot integrado com a Twitch!
; Consiga a autenticação de acesso a Twitch em: https://twitchapps.com/tmi/

connectTwitch { /server irc.chat.twitch.tv:6667 insira-oautch }

on *:text:!hora:#: {
  /msg $chan ⏰ @ $+ $nick $+ , $iif($time(HH) isnum 05-12,Bom dia,$iif($time(HH) isnum 13-18,Boa tarde,Boa noite)) $+ ! São exatamente $time(HH) hora(s) $+ , $time(nn) minuto(s) e $time(ss) segundo(s) (horário de Brasília).
}

on *:text:!cadastrar*:#: {
  set %temp $readini(dbz.ini,@ $+ $nick,nick)
  set %temp2 $readini(dbz.ini,@ $+ $nick,mestre)
  if (%temp2 == $null) {
    if (%temp == $null)  {
      if ($2 == Saiyajin) {
        inc %cadastros
        writeini dbz.ini @ $+ $nick Nick @ $+ $nick
        writeini dbz.ini @ $+ $nick Raça Saiyajin
        writeini dbz.ini @ $+ $nick Fase Saiyajin
        writeini dbz.ini @ $+ $nick KI 10
        writeini dbz.ini @ $+ $nick Gold 0
        writeini dbz.ini @ $+ $nick Registro Nenhum
        writeini dbz.ini @ $+ $nick treino sim
        writeini dbz.ini @ $+ $nick camara sim
        writeini dbz.ini @ $+ $nick ataque sim
        writeini dbz.ini @ $+ $nick vit 0
        writeini dbz.ini @ $+ $nick der 0
        writeini itens.ini @ $+ $nick Gym-Pass 0
        writeini itens.ini @ $+ $nick Escudo-de-energia 0
        writeini itens.ini @ $+ $nick Glorioso 0
        writeini itens.ini @ $+ $nick Scouter 0
        writeini itens.ini @ $+ $nick Semente-dos-deuses 0
        writeini itens.ini @ $+ $nick Irmandade 0
        writeini itens.ini @ $+ $nick Contra-ataque 0
        writeini itens.ini @ $+ $nick Kaioken 0
        writeini itens.ini @ $+ $nick Desarme 0
        writeini itens.ini @ $+ $nick Potara 0
        writeini itens.ini @ $+ $nick Furto 0
        /msg $chan @ $+ $nick $+ , cadastro realizado com sucesso! ( $+ %cadastros $+ )
        /msg $chan @ $+ $nick $+ , agora você pode utilizar o !Treino e o !Camara para aumentar seu KI.
        goto fcad
      }
      if ($2 == Human) {
        inc %cadastros
        writeini dbz.ini @ $+ $nick Nick @ $+ $nick
        writeini dbz.ini @ $+ $nick Raça Human
        writeini dbz.ini @ $+ $nick Fase Human
        writeini dbz.ini @ $+ $nick KI 10
        writeini dbz.ini @ $+ $nick Gold 0
        writeini dbz.ini @ $+ $nick Registro Nenhum
        writeini dbz.ini @ $+ $nick treino sim
        writeini dbz.ini @ $+ $nick camara sim
        writeini dbz.ini @ $+ $nick ataque sim
        writeini dbz.ini @ $+ $nick vit 0
        writeini dbz.ini @ $+ $nick der 0
        writeini itens.ini @ $+ $nick Gym-Pass 0
        writeini itens.ini @ $+ $nick Escudo-de-energia 0
        writeini itens.ini @ $+ $nick Glorioso 0
        writeini itens.ini @ $+ $nick Scouter 0
        writeini itens.ini @ $+ $nick Semente-dos-deuses 0
        writeini itens.ini @ $+ $nick Irmandade 0
        writeini itens.ini @ $+ $nick Contra-ataque 0
        writeini itens.ini @ $+ $nick Kaioken 0
        writeini itens.ini @ $+ $nick Desarme 0
        writeini itens.ini @ $+ $nick Potara 0
        writeini itens.ini @ $+ $nick Furto 0
        /msg $chan @ $+ $nick $+ , cadastro realizado com sucesso! ( $+ %cadastros $+ )
        /msg $chan @ $+ $nick $+ , agora você pode utilizar o !Treino e o !Camara para aumentar seu KI.
        goto fcad
      }
      if ($2 == Namek) {
        inc %cadastros
        writeini dbz.ini @ $+ $nick Nick @ $+ $nick
        writeini dbz.ini @ $+ $nick Raça Namek
        writeini dbz.ini @ $+ $nick Fase Namek
        writeini dbz.ini @ $+ $nick KI 10
        writeini dbz.ini @ $+ $nick Gold 0
        writeini dbz.ini @ $+ $nick Registro Nenhum
        writeini dbz.ini @ $+ $nick treino sim
        writeini dbz.ini @ $+ $nick camara sim
        writeini dbz.ini @ $+ $nick ataque sim
        writeini dbz.ini @ $+ $nick vit 0
        writeini dbz.ini @ $+ $nick der 0
        writeini itens.ini @ $+ $nick Gym-Pass 0
        writeini itens.ini @ $+ $nick Escudo-de-energia 0
        writeini itens.ini @ $+ $nick Glorioso 0
        writeini itens.ini @ $+ $nick Scouter 0
        writeini itens.ini @ $+ $nick Semente-dos-deuses 0
        writeini itens.ini @ $+ $nick Irmandade 0
        writeini itens.ini @ $+ $nick Contra-ataque 0
        writeini itens.ini @ $+ $nick Kaioken 0
        writeini itens.ini @ $+ $nick Desarme 0
        writeini itens.ini @ $+ $nick Potara 0
        writeini itens.ini @ $+ $nick Furto 0
        /msg $chan @ $+ $nick $+ , cadastro realizado com sucesso! ( $+ %cadastros $+ )
        /msg $chan @ $+ $nick $+ , agora você pode utilizar o !Treino e o !Camara para aumentar seu KI.
        goto fcad
      }
      if ($2 == Alien) {
        inc %cadastros
        writeini dbz.ini @ $+ $nick Nick @ $+ $nick
        writeini dbz.ini @ $+ $nick Raça Alien
        writeini dbz.ini @ $+ $nick Fase Alien
        writeini dbz.ini @ $+ $nick KI 10
        writeini dbz.ini @ $+ $nick Gold 0
        writeini dbz.ini @ $+ $nick Registro Nenhum
        writeini dbz.ini @ $+ $nick treino sim
        writeini dbz.ini @ $+ $nick camara sim
        writeini dbz.ini @ $+ $nick ataque sim
        writeini dbz.ini @ $+ $nick vit 0
        writeini dbz.ini @ $+ $nick der 0
        writeini itens.ini @ $+ $nick Gym-Pass 0
        writeini itens.ini @ $+ $nick Escudo-de-energia 0
        writeini itens.ini @ $+ $nick Glorioso 0
        writeini itens.ini @ $+ $nick Scouter 0
        writeini itens.ini @ $+ $nick Semente-dos-deuses 0
        writeini itens.ini @ $+ $nick Irmandade 0
        writeini itens.ini @ $+ $nick Contra-ataque 0
        writeini itens.ini @ $+ $nick Kaioken 0
        writeini itens.ini @ $+ $nick Desarme 0
        writeini itens.ini @ $+ $nick Potara 0
        writeini itens.ini @ $+ $nick Furto 0
        /msg $chan  @ $+ $nick $+ , cadastro realizado com sucesso! ( $+ %cadastros $+ )
        /msg $chan @ $+ $nick $+ , agora você pode utilizar o !Treino e o !Camara para aumentar seu KI.
        goto fcad
      }
      if ($2 == $null) {
        /msg $chan @ $+ $nick $+ , escolha uma raça: Alien, Human, Namek ou Saiyajin.
        /msg $chan Em seguida, digite: !Cadastrar [Classe escolhida]. Ex: !Cadastrar Human

      }
      else {
        /msg $chan @ $+ $nick $+ , escolha uma raça: Alien, Human, Namek ou Saiyajin. 
        /msg $chan Em seguida, digite: !Cadastrar [Classe escolhida]. Ex: !Cadastrar Human
      }
    }
    else {
      /msg $chan @ $+ $nick $+ , você já está cadastrado!
    }
  }
  else {
    ;msg $chan Você precisa de um mestre para cadastrar.
  }    
  :fcad
  unset %temp
  unset %temp2
}
on *:text:!treino:#: {
  if (%toff == off) && ($server == tmi.twitch.tv) && ($chan == #xforgo) { /msg $chan » ArenaIRC temporariamente transferido para: https://www.twitch.tv/ArenaIRC | halt }
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { /msg $chan @ $+ $nick $+ , você não está cadastrado! | halt }
  if ($time(HH) >= $time(HH)) && ($time(HH) <= $time(HH)) {
    set %temp $readini(dbz.ini,@ $+ $nick,nick)
    set %temp2 $readini(dbz.ini,@ $+ $nick,ki)
    set %temp3 $readini(dbz.ini,@ $+ $nick,gold)
    set %temp4 $readini(dbz.ini,@ $+ $nick,treino)
    set %raça $readini(dbz.ini,@ $+ $nick,Raça)
    if (%raça == Namek) {
      set %bonus $rand(1,4)
      set %bonus2 $rand(0,1)
    }
    if (%raça == Human) {
      set %bonus $rand(1,3)
      set %bonus2 $rand(1,3)
    }
    if (%raça == alien) {
      set %bonus $rand(1,2)
      set %bonus2 $rand(1,4)
    }
    if (%raça == saiyajin) {
      set %bonus $rand(1,3)
      set %bonus2 $rand(0,2)
    }

    set %temp4 $readini(dbz.ini,@ $+ $nick,treino)
    set %temp9 $rand(1,10)
    if (%temp4 == sim) {
      if (%temp != $null) {
        if (%temp9 <= 3) {
          set %temp5 $readini(dbzbot.ini,%temp9,ki)
          set %temp6 $readini(dbzbot.ini,%temp9,gold)
          set %temp3 $calc(%temp3 + %temp6 + %bonus2)
          set %temp2 $calc(%temp2 + %temp5 + %bonus)
          writeini dbz.ini @ $+ $nick ki %temp2
          writeini dbz.ini @ $+ $nick gold %temp3
          writeini dbz.ini @ $+ $nick treino não
          /timertreino $+ $nick 1 900 writeini dbz.ini @ $+ $nick treino sim
          /msg $chan 🏋️ @ $+ $nick $+ , você treinou pesado com $readini(dbzbot.ini,%temp9,nome) e ganhou %temp5 de KI e $ $+ %temp6 de dinheiro $+ . (Bônus: + $+ %bonus de KI e $ $+ %bonus2 de dinheiro)
        }
        elseif (%temp9 > 3) && (%temp9 <= 8) {
          set %temp5 $rand(1,7)
          set %temp6 $rand(1,7)
          set %temp3 $calc(%temp3 + %temp6 + %bonus2)
          set %temp2 $calc(%temp2 + %temp5 + %bonus)
          writeini dbz.ini @ $+ $nick ki %temp2
          writeini dbz.ini @ $+ $nick gold %temp3
          writeini dbz.ini @ $+ $nick treino não
          /timertreino $+ $nick 1 900 writeini dbz.ini @ $+ $nick treino sim
          /msg $chan 🏋️ @ $+ $nick $+ , você fez treino leve com $readini(dbzbot.ini,%temp9,nome) e ganhou %temp5 de KI e $ $+ %temp6 de dinheiro $+ . (Bônus: + $+ %bonus de KI e $ $+ %bonus2 de dinheiro)
        }
        else {
          /msg $chan 🚑 @ $+ $nick $+ , você foi treinar e se machucou. Descanse um pouco e tente novamente.
          writeini dbz.ini @ $+ $nick treino não
          /timertreino $+ $nick 1 900 writeini dbz.ini @ $+ $nick treino sim
        }
      }
      else {
        /msg $chan @ $+ $nick $+ , você não está cadastrado!
      }
    }
    else {
      /msg $chan ⏳ @ $+ $nick $+ , você treinou a pouco tempo. Cooldown: $tempo_certo($timer(treino $+ $nick $+ ).secs) $+ .
      /semtempo $nick
    }
    unset %temp
    unset %temp2
    unset %temp3
    unset %temp4  
    unset %temp5  
    unset %temp6  
    unset %temp9  
    unset %raça
    unset %bonus
    unset %bonus2
  }
  else {
    /msg $chan @ $+ $nick $+ , desculpe, os treinos são somente permitidos das 10 Horas até as 22 Horas. :\
  }
}
on $*:TEXT:/^[!@.](camara gravitacional|câmara gravitacional|camara)/Si:#:{
  if (%toff == off) && ($server == tmi.twitch.tv) && ($chan == #xforgo) { /msg $chan » ArenaIRC temporariamente transferido para: https://www.twitch.tv/ArenaIRC | halt }
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { /msg $chan @ $+ $nick $+ , você não está cadastrado! | halt }
  if ($time(HH) >= $time(HH)) && ($time(HH) <= $time(HH)) {
    set %temp $readini(dbz.ini,@ $+ $nick,nick)
    set %temp2 $readini(dbz.ini,@ $+ $nick,ki)
    set %temp3 $readini(dbz.ini,@ $+ $nick,gold)
    set %temp4 $readini(dbz.ini,@ $+ $nick,camara)
    set %raça $readini(dbz.ini,@ $+ $nick,Raça)
    if (%raça == Namek) {
      set %bonus $rand(1,4)
      set %bonus2 $rand(0,1)
    }
    if (%raça == Human) {
      set %bonus $rand(1,3)
      set %bonus2 $rand(1,3)
    }
    if (%raça == alien) {
      set %bonus $rand(1,2)
      set %bonus2 $rand(1,4)
    }
    if (%raça == saiyajin) {
      set %bonus $rand(1,3)
      set %bonus2 $rand(0,2)
    }

    set %temp4 $readini(dbz.ini,@ $+ $nick,camara)
    set %temp9 $rand(1,100)
    if (%temp4 == sim) {
      if (%temp != $null) {
        if (%temp9 > 90) {
          set %temp5 $rand(30,50)
          set %temp6 $rand(10,20)
          set %temp3 $calc(%temp3 + %temp6 + %bonus2)
          set %temp2 $calc(%temp2 + %temp5 + %bonus)
          writeini dbz.ini @ $+ $nick ki %temp2
          writeini dbz.ini @ $+ $nick gold %temp3
          writeini dbz.ini @ $+ $nick camara não
          /timercamara $+ $nick 1 3600 writeini dbz.ini @ $+ $nick camara sim
          /msg $chan 🌀 @ $+ $nick $+ , você obteve sucesso em seu treino gravitacional e ganhou %temp5 de KI e $ $+ %temp6 de dinheiro $+ . (Bônus: + $+ %bonus de KI e $ $+ %bonus2 de dinheiro)
        }
        else {
          /msg $chan @ $+ $nick $+ , você fracassou no seu treino gravitacional.
          writeini dbz.ini @ $+ $nick camara não
          /timercamara $+ $nick 1 3600 writeini dbz.ini @ $+ $nick camara sim
        }
      }
      else {
        /msg $chan @ $+ $nick $+ , você não está cadastrado!
      }
    }
    else {
      /msg $chan ⏳ @ $+ $nick $+ , descanse um pouco. Cooldown: $tempo_certo($timer(camara $+ $nick $+ ).secs) $+ .
      /semtempo $nick
    }
    unset %temp
    unset %temp2
    unset %temp3
    unset %temp4  
    unset %temp5  
    unset %temp6  
    unset %temp9  
    unset %raça
    unset %bonus
    unset %bonus2
  }
  else {
    /msg $chan @ $+ $nick $+ , desculpe, treinos são somente permitidos das 10 Horas até as 22 Horas. :\
  }
}
on *:text:!info:#: {
  if (%toff == off) && ($server == tmi.twitch.tv) && ($chan == #xforgo) { /msg $chan » ArenaIRC temporariamente transferido para: https://www.twitch.tv/ArenaIRC | halt }
  set %temp $readini(dbz.ini,@ $+ $nick,nick)
  set %arma $readini(dbz.ini,@ $+ $nick,arma)
  set %armadura $readini(dbz.ini,@ $+ $nick,armadura)
  set %def $readini(dbzbot.ini,%armadura,def)
  set %atk $readini(dbzbot.ini,%arma,atk)
  set %raca1 $readini(dbz.ini,@ $+ $nick,raça)
  set %fase1 $readini(dbz.ini,@ $+ $nick,fase)
  set %vitoria $readini(dbz.ini,@ $+ $nick,vit)
  set %derrota $readini(dbz.ini,@ $+ $nick,der)
  set %kk $readini(dbz.ini,@ $+ $nick,Kaioken)
  set %titulo $readini(dbz.ini,@ $+ $nick,Titulo)
  if (%arma == $null) {
    set %arma Nenhuma
    set %atk 0
  }
  if (%armadura == $null) {
    set %armadura Nenhuma
    set %def 0
  }
  if (%fase1 == %raca1) {
    unset %fase1
  }
  if (%kk == on) {
    set %kkmostra (Kaioken)
  }
  if (%temp != $null) {
    /msg $chan 📜 @ $+ $nick $+ %titulo $+ , você é %raca1 %fase1 - está equipado com %arma $+ (+ $+ %atk $+ ) e vestindo %armadura $+ (+ $+ %def $+ ) $+ , tem $readini(dbz.ini,@ $+ $nick,ki) de KI %kkmostra e $ $+ $readini(dbz.ini,@ $+ $nick,gold) de dinheiro. Venceu %vitoria ( $+ $int($calc((%vitoria * 100) / $calc(%vitoria + %derrota))) $+ %) luta(s) e perdeu %derrota ( $+ $int($calc((%derrota * 100) / $calc(%derrota + %vitoria))) $+ %).
    /novafase
    /semkaioken $nick
  }
  else {
    /msg $chan @ $+ $nick $+ , você não está cadastrado!
  }
  unset %titulo
  unset %temp
  unset %arma
  unset %armadura
  unset %def
  unset %atk
  unset %fase1
  unset %kk
}
on *:text:!info *:#: {
  if (%toff == off) && ($server == tmi.twitch.tv) && ($chan == #xforgo) { /msg $chan » ArenaIRC temporariamente transferido para: https://www.twitch.tv/ArenaIRC | halt }
  if (@ !isin $2) {
    /msg $chan @ $+ $nick $+ , utilize @ antes do nick. Ex: !Info @Gohan
    halt
  }
  set %temp $readini(dbz.ini,$2,nick)
  set %arma $readini(dbz.ini,$2,arma)
  set %armadura $readini(dbz.ini,$2,armadura)
  set %def $readini(dbzbot.ini,%armadura,def)
  set %atk $readini(dbzbot.ini,%arma,atk)
  set %raca2 $readini(dbz.ini,$2,raça)
  set %fase2 $readini(dbz.ini,$2,fase)
  set %kk2 $readini(dbz.ini,$2,Kaioken)
  set %titulo2 $readini(dbz.ini,$2,Titulo)
  if (%arma == $null) {
    set %arma Nenhuma
    set %atk 0
  }
  if (%armadura == $null) {
    set %armadura Nenhuma
    set %def 0
  }
  if (%fase2 == %raca2) {
    unset %fase2
  }
  if (%kk2 == on) {
    set %kkmostra2 (Kaioken)
  }
  if (%temp != $null) {
    /msg $chan 🔎 @ $+ $nick $+ , $2 $+ %titulo2 é %raca2 %fase2 - está equipado com %arma $+ (+ $+ %atk $+ ) e vestindo %armadura $+ (+ $+ %def $+ ) $+ , tem $readini(dbz.ini,$2,ki) de KI %kkmostra2 e $ $+ $readini(dbz.ini,$2,gold) de dinheiro.
  }
  else {
    /msg $chan @ $+ $nick $+ , $2 não está cadastrado!
  }
  unset %titulo2
  unset %temp
  unset %arma
  unset %armadura
  unset %def
  unset %atk
  unset %kk2
}

on *:text:!atacar *:#: {
  if (%toff == off) && ($server == tmi.twitch.tv) && ($chan == #xforgo) { /msg $chan » ArenaIRC temporariamente transferido para: https://www.twitch.tv/ArenaIRC | halt }
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { /msg $chan @ $+ $nick $+ , você não está cadastrado! | halt }
  if (@ !isin $2) {
    /msg $chan @ $+ $nick $+ , utilize @ antes do nick. Ex: !atacar @Gohan
    halt
  }
  if (@ $+ $nick == $2 ) {
    /msg $chan 🛡️ @ $+ $nick $+ , espertinho! Você não pode se atacar!
    halt
  }
  set %temp $readini(dbz.ini,@ $+ $nick,nick)
  set %temp2 $readini(dbz.ini,@ $+ $nick,ki)
  set %temp3 $readini(dbz.ini,@ $+ $nick,gold)
  set %temp1 $readini(dbz.ini,$2,nick)
  set %temp21 $readini(dbz.ini,$2,ki)
  set %temp31 $readini(dbz.ini,$2,gold)
  set %arma $readini(dbz.ini,@ $+ $nick,arma)
  set %arma2 $readini(dbz.ini,$2,arma)
  set %armadura $readini(dbz.ini,@ $+ $nick,armadura)
  set %armadura2 $readini(dbz.ini,$2,armadura)
  set %atk $readini(dbzbot.ini,%arma,atk)
  set %atk2 $readini(dbzbot.ini,%arma2,atk)
  set %def $readini(dbzbot.ini,%armadura,def)
  set %def2 $readini(dbzbot.ini,%armadura2,def)
  set %raça $readini(dbz.ini,@ $+ $nick,Raça)
  set %raça2 $readini(dbz.ini,$2,Raça)
  if (%arma == $null) {
    set %atk 0
  }
  if (%armadura == $null) {
    set %def 0
  }
  if (%arma2 == $null) {
    set %atk 0
  }
  if (%armadura2 == $null) {
    set %def 0
  }
  if (%raça == Namek) {
    set %bonus $rand(1,2)
    set %bonus2 $rand(1,4)
  }
  if (%raça == Human) {
    set %bonus $rand(1,2)
    set %bonus2 $rand(1,4)
  }
  if (%raça == alien) {
    set %bonus $rand(1,2)
    set %bonus2 $rand(1,4)
  }
  if (%raça == saiyajin) {
    set %bonus $rand(1,2)
    set %bonus2 $rand(1,4)
  }

  if (%raça2 == Namek) {
    set %bonus1 $rand(1,2)
    set %bonus21 $rand(1,4)
  }
  if (%raça2 == Human) {
    set %bonus1 $rand(1,2)
    set %bonus21 $rand(1,4)
  }
  if (%raça2 == alien) {
    set %bonus1 $rand(1,2)
    set %bonus21 $rand(1,4)
  }
  if (%raça2 == saiyajin) {
    set %bonus1 $rand(1,2)
    set %bonus21 $rand(1,4)
  }



  set %temp5 $calc(%temp2 / %temp21 * 100)
  set %temp6 $calc(%temp21 / %temp2 * 100)

  set %temp4 $readini(dbz.ini,@ $+ $nick,ataque)
  if ($me ison $chan) {
    if (%temp != $null) {
      if (%temp1 != $null) {  
        if (%temp4 == sim) {
          if (%temp5 >= 300) || (%temp5 <= 60) || (%temp6 >= 300) || (%temp6 <= 60) {
            /msg $chan @ $+ $nick $+ , diferença de nível muito grande.
            goto fat
          }
          else {
            :rate
            if (%temp2 >= %temp21) { set %rate1 $int($calc(%temp2 * $rand(75,150) / 100 + %atk - %def2)) | set %rate2 $int($calc(%temp21 * $rand(75,160) / 100 + %atk2 - %def)) }
            if (%temp21 > %temp2) { set %rate1 $int($calc(%temp2 * $rand(75,160) / 100 + %atk - %def2)) | set %rate2 $int($calc(%temp21 * $rand(75,150) / 100 + %atk2 - %def)) }
            if (%rate1 == %rate2 ) {
              goto rate
            }
            if ($readini(dbz.ini,$2,imune) == sim) {
              set %danoescudo $rand(1,12)
              writeini dbz.ini @ $+ $nick ki $calc(%temp2 - %danoescudo)
              msgall 🌐 🛡️ @ $+ $nick ataca $2 que utiliza o escudo de energia como proteção para evitar o ataque.
              msgall 🌐 🛡️ @ $+ $nick perde %danoescudo de KI.
              writeini dbz.ini $2 imune não
              writeini dbz.ini $2 registro $nick às $time em $date (você usou o escudo de energia)
              writeini dbz.ini @ $+ $nick ataque não
              /timerataque $+ $nick 1 1800 writeini dbz.ini @ $+ $nick ataque sim
              goto fat
            halt      }
            set %gold $rand(2,10)
            set %gold2 $rand(1,5)
            set %ki $rand(2,10)
            set %ki2 $rand(1,5)
            if (%rate1 > %rate2) {
              if (%temp2 >= %temp21) { set %temp21 $calc(%temp21 - %ki2) | set %temp2 $calc(%temp2 + %ki) }
              if (%temp21 > %temp2) { set %temp21 $calc(%temp21 - %ki2 - 10) | set %temp2 $calc(%temp2 + %ki + %bonus) }
              set %temp3 $calc(%temp3 + %gold + %bonus2)
              set %temp31 $calc(%temp31 - %gold2)
              if (%temp21 < 10) { set %temp21 10 }
              if (%temp31 < 0) { set %temp31 0 }
              writeini dbz.ini @ $+ $nick ki %temp2
              writeini dbz.ini @ $+ $nick gold %temp3
              writeini dbz.ini $2 ki %temp21
              writeini dbz.ini $2 gold %temp31
              writeini dbz.ini @ $+ $nick ataque não
              /timerataque $+ $nick 1 1800 writeini dbz.ini @ $+ $nick ataque sim
              writeini dbz.ini $2 registro $nick às $time em $date (você perdeu)
              set %vit1 $readini(dbz.ini,@ $+ $nick,vit)
              set %der1 $readini(dbz.ini,$2,der)
              /msgall ⚔️ @ $+ $nick ataca $2 $read( $+ %raça $+ .txt) (BP: %rate1 $+ ). $2 tenta defender $read( $+ %raça2 $+ .txt) (BP: %rate2 $+ ).
              /contrataque $2
              /msgall ⚔️ Vitória de @ $+ $nick $+ !
              writeini dbz.ini @ $+ $nick vit $calc(%vit1 + 1)
              writeini dbz.ini $2 der $calc(%der1 + 1)                        
            }
            else {
              if (%temp21 >= %temp2) { set %temp2 $calc(%temp2 - %ki2) | set %temp21 $calc(%temp21 + %ki) }
              if (%temp2 > %temp21) { set %temp2 $calc(%temp2 - %ki2 - 10) | set %temp21 $calc(%temp21 + %ki + %bonus21) }
              set %temp3 $calc(%temp3 - %gold2)

              set %temp31 $calc(%temp31 + %gold + %bonus21)
              if (%temp2 < 10) { set %temp2 10 }
              if (%temp3 < 0) { set %temp3 0 }
              writeini dbz.ini @ $+ $nick ki %temp2
              writeini dbz.ini @ $+ $nick gold %temp3
              writeini dbz.ini $2 ki %temp21
              writeini dbz.ini $2 gold %temp31
              writeini dbz.ini @ $+ $nick ataque não
              /timerataque $+ $nick 1 1800 writeini dbz.ini @ $+ $nick ataque sim
              set %vit2 $readini(dbz.ini,$2,vit)
              set %der2 $readini(dbz.ini,@ $+ $nick,der)
              writeini dbz.ini $2 vit $calc(%vit2 + 1)
              writeini dbz.ini @ $+ $nick der $calc(%der2 + 1)
              writeini dbz.ini $2 registro $nick às $time em $date (você ganhou)
              /msgall ⚔️ @ $+ $nick ataca $2 $read( $+ %raça $+ .txt) (BP: %rate1 $+ ). $2 defende $read( $+ %raça2 $+ .txt) (BP: %rate2 $+ ). 
              /msgall ⚔️ Vitória de $2 $+ !
              ;/msgall @ $+ $nick atacou $2 causando %rate1 de dano contra %rate2 $+ . Vitória de $2 $+ !
              ;/msgall $2 ganhou %ki de KI e $ $+ %gold de dinheiro (Bônus: + $+ %bonus1 de KI e $ $+ %bonus21 de dinheiro) 
              ;/msgall @ $+ $nick perdeu %ki2 de KI e %gold2 de dinheiro (Bônus: + $+ %bonus de KI e $ $+ %bonus2 de dinheiro)
            }
          }
        }
        else {
          /msg $chan ⏰ @ $+ $nick $+ , você atacou a pouco tempo. Cooldown: $tempo_certo($timer(ataque $+ $nick $+ ).secs) $+ .
          /semtempo $nick
        }
      }
      else {
        /msg $chan  $nick $+ , $2 não está cadastrado!
      }
    }
    else {
      /msg $chan @ $+ $nick $+ , você não está cadastrado!
    }
  }
  else {
    msg $chan  $+ $2 não está no canal!
  }
  :fat
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
}

on *:text:!comprar armadura *:#: {
  set %temp $readini(dbz.ini,@ $+ $nick,nick)
  set %temp2 $readini(dbz.ini,@ $+ $nick,gold)
  set %preco $readini(dbzbot.ini,$3-,preco)
  set %tipo $readini(dbzbot.ini,$3-,tipo)  
  if (%temp == $null) {
    /msg $chan $nick $+ , você não está cadastrado!
    goto fcom
  }
  if (%preco == $null) || (%tipo != Armadura) {
    /msg $chan $nick $+ , item inválido, verifique sua digitação.
    goto fcom
  }
  if (%temp2 >= %preco) {
    set %temp2 $calc(%temp2 - %preco)
    writeini dbz.ini @ $+ $nick gold %temp2
    writeini dbz.ini @ $+ $nick Armadura $readini(dbzbot.ini,$3-,nome)
    /msg $chan 🛒 $nick $+ , compra realizada com sucesso!
    goto fcom
  }
  else {
    /msg $chan $nick $+ , você não possui dinheiro suficiente para isso!
  }
  :fcom
  unset %temp
  unset %temp2
  unset %preco
  unset %tipo
  unset %armadura
}
on *:text:!comprar arma *:#: {
  set %temp $readini(dbz.ini,@ $+ $nick,nick)
  set %temp2 $readini(dbz.ini,@ $+ $nick,gold)
  set %preco $readini(dbzbot.ini,$3-,preco)
  set %tipo $readini(dbzbot.ini,$3-,tipo) 
  if (%temp == $null) {
    /msg $chan  $nick $+ , você não está cadastrado!
    goto fcom2
  }
  if (%preco == $null) || (%tipo != Arma) {
    /msg $chan @ $+ $nick $+ , Item inválido
    goto fcom2
  }
  if (%temp2 >= %preco) {
    set %temp2 $calc(%temp2 - %preco)
    writeini dbz.ini @ $+ $nick gold %temp2
    writeini dbz.ini @ $+ $nick Arma $readini(dbzbot.ini,$3-,nome)
    /msg $chan 🛒 $nick $+ , compra realizada com sucesso!
    goto fcom2
  }
  else {
    /msg $chan $nick $+ , você não possui dinheiro suficiente para isso!
  }
  :fcom2
  unset %temp
  unset %temp2
  unset %preco
  unset %tipo
  unset %arma
}
on *:text:!vender arma *:#: {
  set %temp $readini(dbz.ini,@ $+ $nick,nick)
  set %temp2 $readini(dbz.ini,@ $+ $nick,gold)
  set %preco $readini(dbzbot.ini,$3-,preco)
  set %preco $calc(%preco / 2)
  set %tipo $readini(dbzbot.ini,$3-,tipo)
  set %arma $readini(dbz.ini,@ $+ $nick,arma)
  if (%temp == $null) {
    /msg $chan $nick $+ , você não está cadastrado!
    goto fven
  }
  if (%preco == $null) || (%tipo != Arma) {
    /msg $chan $nick $+ , item inválido.
    goto fven
  }
  if (%arma == $3-) {
    set %temp2 $calc(%temp2 + %preco)
    writeini dbz.ini @ $+ $nick gold %temp2
    remini dbz.ini @ $+ $nick Arma $readini(dbzbot.ini,$2-,nome)
    /msg $chan 💵 $nick $+ , venda realizada com sucesso!
    goto fven
  }
  else {
    /msg $chan $nick $+ , você não possui esse item!
  }
  :fven
  unset %temp
  unset %temp2
  unset %preco
  unset %tipo
  unset %arma
}
on *:text:!vender armadura *:#: {
  set %temp $readini(dbz.ini,@ $+ $nick,nick)
  set %temp2 $readini(dbz.ini,@ $+ $nick,gold)
  set %preco $readini(dbzbot.ini,$3-,preco)
  set %preco $calc(%preco / 2)
  set %tipo $readini(dbzbot.ini,$3-,tipo)
  set %armadura $readini(dbz.ini,@ $+ $nick,armadura)
  if (%temp == $null) {
    /msg $chan $nick $+ , Você não está cadastrado!
    goto fven2
  }
  if (%preco == $null) || (%tipo != Armadura) {
    /msg $chan $nick $+ , item inválido.
    goto fven2
  }
  if (%armadura == $3-) {
    set %temp2 $calc(%temp2 + %preco)
    writeini dbz.ini @ $+ $nick gold %temp2
    remini dbz.ini @ $+ $nick Armadura $readini(dbzbot.ini,$3-,nome)
    /msg $chan 💵 $nick $+ , venda realizada com sucesso!
    goto fven2
  }
  else {
    /msg $chan $nick $+ , você não possui esse item!
  }
  :fven2
  unset %temp
  unset %temp2
  unset %preco
  unset %tipo
  unset %armadura
}
on *:text:!armas:#: {
  /msg $chan 🔪 Bastão, Atk $readini(dbzbot.ini,Bastão,atk) $+ , Preço $readini(dbzbot.ini,Bastão,preco) / Shurikens, Atk 10, Preço $readini(dbzbot.ini,Shurikens,preco) / Kunai, Atk 30, Preço $readini(dbzbot.ini,Kunai,preco) / Bastão Mágico, Atk 50, Preço $readini(dbzbot.ini,Bastão Mágico,preco) / Espada Curvada, Atk 120, Preço $readini(dbzbot.ini,Espada Curvada,preco) $+ ;
  /msg $chan 🗡️ Arm Cannon, Atk 140, Preço $readini(dbzbot.ini,Arm Cannon,preco) / Espada Valente, Atk 160, Preço $readini(dbzbot.ini,Espada Valente,preco) / Espada Yajirobe, Atk 220, Preço $readini(dbzbot.ini,Espada Yajirobe,preco) / Espada Konack, Atk 250, Preço $readini(dbzbot.ini,Espada Konack,preco) / Espada Gigante, Atk 350, Preço $readini(dbzbot.ini,Espada Gigante,preco) / Espada Dimensional, Atk 500, Preço $readini(dbzbot.ini,Espada Dimensional,preco) $+ .
  /msg $chan Digite !comprar arma [item] ou !vender arma [item]
}

on *:text:!armaduras:#: {
  /msg $chan 🛡️ Roupa de Treino, Def 5, Preço $readini(dbzbot.ini,Roupa de Treino,preco) / Colete, Def 10, Preço $readini(dbzbot.ini,Colete,preco) / Armadura Leve, Def 30, $readini(dbzbot.ini,Armadura Leve,preco) / Armadura Pesada, Def 50, Preço $readini(dbzbot.ini,Armadura Pesada,preco) / Armadura de Batalha, Def 120, Preço $readini(dbzbot.ini,Armadura de batalha,preco) $+ ;
  /msg $chan 🥋 Esquadrão Tartaruga Gi, Def 120, Preço $readini(dbzbot.ini,Esquadrão Tartaruga Gi,preco) / Armadura de Android, Def 200, Preço $readini(dbzbot.ini,Armadura de Android,preco) / Piccolo Demon Clothes, Def 500, Preço $readini(dbzbot.ini,Piccolo Demon Clothes,preco) / Armadura Saiyajin, Def 800, Preço $readini(dbzbot.ini,Armadura Saiyajin,preco) $+ .
  /msg $chan Digite !comprar armadura [item] ou !vender armadura [item]
}
off *:text:!top:#: {
  unset %rank
  set %i 1
  set %z 1
  set %l $lines(dbz.ini)
  set %ki 0
  while (%i <= 10) {
    set %ki 0
    while ( %z <= %l ) {
      if (ki= isin $read(dbz.ini,%z)) {
        if ( $gettok($read(dbz.ini,%z),2,61) > %ki ) && ( $gettok($read(dbz.ini,$calc(%z - 2)),2,61) !isin %rank ) {
          set %ki $gettok($read(dbz.ini,%z),2,61)
          set %nome $gettok($read(dbz.ini,$calc(%z - 2)),2,61)
          set %raca $readini(dbz.ini,%nome,raça)
        }
      }      
      inc %z
    }
    set %rank %rank %i $+ º %nome - %raca $+ / $+ %ki $+ ) / 
    inc %i
    set %z 1
  }
  /msg $chan [Ranking] $gettok(%rank,1-49,32)
  unset %i
  unset %z
  unset %l
  unset %ki
  unset %nome
  unset %ranm
}

on *:text:!cd:#: {
  if (%toff == off) && ($server == tmi.twitch.tv) && ($chan == #xforgo) { /msg $chan » ArenaIRC temporariamente transferido para: https://www.twitch.tv/ArenaIRC | halt }
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { /msg $chan @ $+ $nick $+ , você não está cadastrado! | halt }
  /msg $chan @ $+ $nick $+ , cooldowns: treino( $+ $tempo_certo($timer(treino $+ $nick $+ ).secs) $+ ); ataque( $+ $tempo_certo($timer(ataque $+ $nick $+ ).secs) $+ ); câmara( $+ $tempo_certo($timer(camara $+ $nick $+ ).secs) $+ ).
}
