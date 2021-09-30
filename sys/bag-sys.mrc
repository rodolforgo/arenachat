on *:text:!itens:#: {
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { /msg $chan @ $+ $nick $+ , você não está cadastrado! | halt }
  set %gym $readini(itens.ini,@ $+ $nick,Gym-Pass)
  set %escudo $readini(itens.ini,@ $+ $nick,Escudo-de-energia)
  set %glorioso $readini(itens.ini,@ $+ $nick,Glorioso)
  set %scouter $readini(itens.ini,@ $+ $nick,Scouter)
  set %semente $readini(itens.ini,@ $+ $nick,semente-dos-deuses)
  set %irmandade $readini(itens.ini,@ $+ $nick,irmandade)
  set %contraatk $readini(itens.ini,@ $+ $nick,contra-ataque)
  set %ikk $readini(itens.ini,@ $+ $nick,kaioken)
  set %1strip $readini(itens.ini,@ $+ $nick,desarme)
  set %1potara $readini(itens.ini,@ $+ $nick,Potara)
  if (%gym == 0) && (%semente == 0) && (%escudo == 0) && (%glorioso == 0) && (%scouter == 0) && (%irmandade == 0) && (%contraatk == 0) && (%ikk == 0) && (%1strip == 0) {
    /msg $chan @ $+ $nick $+ , você não possui nenhum item. Há chance de dropar sempre que mandar uma mensagem aqui no chat.
    halt
  }
  if (%ikk != 0) {
    set %kki kaioken( $+ %ikk $+ );
  }
  if (%scouter != 0) {
    set %sc scouter( $+ %scouter $+ );
  }
  if (%escudo != 0) {
    set %esc escudo de energia( $+ %escudo $+ );
  }
  if (%contraatk != 0) {
    set %contra contra-ataque( $+ %contraatk $+ );
  }
  if (%glorioso != 0) {
    set %gl glorioso( $+ %glorioso $+ );
  }
  if (%irmandade != 0) {
    set %ir irmandade( $+ %irmandade $+ );
  }
  if (%semente != 0) {
    set %se semente dos Deuses( $+ %semente $+ );
  }
  if (%gym != 0) {
    set %gy gym pass( $+ %gym $+ ).
  }
  if (%1strip != 0) {
    set %strip desarme( $+ %1strip $+ );
  }
  if (%1potara != 0) {
    set %potara potara( $+ %1potara $+ );
  }
  /msg $chan 💼 @ $+ $nick $+ , você possui: %sc %kki %esc %contra %gl %ir %se %strip %gy %potara [!usar item]
  /unset %sc
  /unset %kki
  /unset %esc
  /unset %contra
  /unset %gl
  /unset %ir
  /unset %se
  /unset %strip
  /unset %gy
  /unset %potara
}


on *:text:!usar *:#: {
  if ($readini(dbz.ini,@ $+ $nick,nick) == $null) { /msg $chan @ $+ $nick $+ , você não está cadastrado! | halt }
  if ($2 == $null) { /msg $chan @ $+ $nick $+ , qual item você deseja utilizar? Digite !itens e veja seu inventário. | halt }
  if ($2- == Semente dos deuses) { 
    set %itematual $readini(itens.ini,@ $+ $nick,semente-dos-deuses)
    if (%itematual == 0) { /msg $chan @ $+ $nick $+ , você não possui esse item! | halt }
    set %kiatual $readini dbz.ini @ $+ $nick KI
    set %kiganho $rand(30,70)
    writeini itens.ini @ $+ $nick semente-dos-deuses $calc(%itematual - 1)
    writeini dbz.ini @ $+ $nick KI $calc(%kiatual + %kiganho)
    msgall @ $+ $nick $+ , você usou o item consumível Semente dos Deuses ganhando %kiganho de KI.
    halt
  }
  if ($2 == Glorioso) { 
    if ($3 == $null) { /msg $chan @ $+ $nick $+ , o item Glorioso retira KI de um jogador. Para usá-lo digite: !usar Glorioso @nick | halt }
    if ($readini(dbz.ini,$3,nick) == $null) { /msg $chan @ $+ $nick $+ , $3 não está cadastrado! | halt }
    set %itematual $readini(itens.ini,@ $+ $nick,glorioso)
    if (%itematual == 0) { /msg $chan @ $+ $nick $+ , você não possui esse item! | halt }
    if (@ $+ $nick == $3 ) { /msg $chan @ $+ $nick $+ , escolha outra pessoa! | halt }
    set %kiatual $readini dbz.ini $3 KI
    set %kiganho $rand(30,70)
    writeini itens.ini @ $+ $nick glorioso $calc(%itematual - 1)
    set %gloria $calc(%kiatual - %kiganho)
    if (%gloria <= 0) { writeini dbz.ini $3 KI 1 | /msgall @ $+ $nick $+ , você usou o item consumível Glorioso em $3 retirando todo o seu KI. | halt }
    writeini dbz.ini $3 KI $calc(%kiatual - %kiganho)
    msgall @ $+ $nick $+ , você usou o item consumível Glorioso em $3 retirando %kiganho de KI.
    halt
  }
  if ($2 == Irmandade) { 
    set %itematual $readini(itens.ini,@ $+ $nick,irmandade)
    if (%itematual == 0) { /msg $chan @ $+ $nick $+ , você não possui esse item! | halt }
    if ($3 == $null) { /msg $chan @ $+ $nick $+ , o item Irmandade adiciona KI a um jogador. Para usá-lo digite: !usar Irmandade @nick | halt }
    if (@ $+ $nick == $3 ) { /msg $chan @ $+ $nick $+ , escolha outra pessoa! | halt }
    if ($readini(dbz.ini,@ $+ $3,nick) != $null) { /msg $chan @ $+ $nick $+ , $3 não está cadastrado! | halt }
    set %kiatual $readini dbz.ini $3 KI
    set %kiganho $rand(30,70)
    writeini itens.ini @ $+ $nick irmandade $calc(%itematual - 1)
    writeini dbz.ini $3 KI $calc(%kiatual + %kiganho)
    msgall @ $+ $nick $+ , usou o item consumível Irmandade em $3 adicionando %kiganho de KI.
    halt
  }
  if ($2- == Gym Pass) { 
    set %itematual $readini(itens.ini,@ $+ $nick,gym-pass)
    if (%itematual == 0) { /msg $chan @ $+ $nick $+ , você não possui esse item! | halt }
    writeini itens.ini @ $+ $nick gym-pass $calc(%itematual - 1)
    writeini dbz.ini @ $+ $nick treino sim
    writeini dbz.ini @ $+ $nick camara sim
    writeini dbz.ini @ $+ $nick ataque sim
    /timertreino $+ $nick off
    /timercamara $+ $nick off
    /timerataque $+ $nick off
    msg $chan @ $+ $nick $+ , todos os seus cooldowns foram zerados. Você pode treinar e atacar novamente.
  }
  if ($2- == Escudo de energia) { 
    set %itematual $readini(itens.ini,@ $+ $nick,escudo-de-energia)
    if (%itematual == 0) { /msg $chan @ $+ $nick $+ , você não possui esse item! | halt }
    if ($readini(dbz.ini,@ $+ $nick,imune) == sim) { /msg $chan @ $+ $nick $+ , você já possui um escudo ativo! | halt }
    writeini itens.ini @ $+ $nick escudo-de-energia $calc(%itematual - 1)
    writeini dbz.ini @ $+ $nick imune sim
    msgall @ $+ $nick $+ , você usou o item consumível Escudo de Energia e está imune ao próximo ataque.
  }
  if ($2- == Contra-ataque) { 
    set %itematual $readini(itens.ini,@ $+ $nick,contra-ataque)
    if (%itematual == 0) { /msg $chan @ $+ $nick $+ , você não possui esse item! | halt }
    if ($readini(dbz.ini,@ $+ $nick,contra) == sim) { /msg $chan @ $+ $nick $+ , você já está pronto para um contra-ataque! | halt }
    writeini itens.ini @ $+ $nick contra-ataque $calc(%itematual - 1)
    writeini dbz.ini @ $+ $nick contra sim
    msgall @ $+ $nick $+ , agora você está concentrado para realizar um crítico contra-ataque num confronto próximo.
  }
  if ($2- == Scouter) { 
    set %itematual $readini(itens.ini,@ $+ $nick,Scouter)
    if (%itematual == 0) { /msg $chan @ $+ $nick $+ , você não possui esse item! | halt }
    set %registro $readini dbz.ini @ $+ $nick registro
    msg $chan 🥽 @ $+ $nick $+ , o scouter mostra quem te atacou por último: @ $+ %registro $+ .
  }
  if ($2- == Kaioken) { 
    msg $chan 🥽 @ $+ $nick $+ , para usar o Kaioken digita !Kaioken
    msg $chan 🥽 O Kaioken pode ser utilizado uma vez por dia gratuitamente, o item te permite utilizar mais vezes. 
  }
  if ($2 == Desarme) { 
    if ($3 == $null) { /msg $chan @ $+ $nick $+ , o Desarme retira o Escudo de energia e o Contra-ataque de um jogador. Para usá-lo digite: !usar Desarme @nick | halt }
    if ($readini(dbz.ini,$3,nick) == $null) { /msg $chan @ $+ $nick $+ , $3 não está cadastrado! | halt }
    set %itematual $readini(itens.ini,@ $+ $nick,desarme)
    if (%itematual == 0) { /msg $chan @ $+ $nick $+ , você não possui esse item! | halt }
    if (@ $+ $nick == $3 ) { /msg $chan @ $+ $nick $+ , escolha outra pessoa! | halt }
    set %strip1 $readini(dbz.ini,$3,imune)
    set %strip2 $readini(dbz.ini,$3,contra)
    if (%strip1 != sim ) && (%strip2 != sim ) { /msg $chan @ $+ $nick $+ , $3 não está armado com nenhum item! | halt }
    writeini dbz.ini $3 imune não
    writeini dbz.ini $3 contra não
    writeini itens.ini @ $+ $nick desarme $calc(%itematual - 1)
    msgall 👋 @ $+ $nick $+ , desarme realizado com sucesso!  
  }
}
