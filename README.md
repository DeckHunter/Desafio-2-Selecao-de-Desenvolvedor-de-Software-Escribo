# Desafio-2-Selecao-de-Desenvolvedor-de-Software-Escribo

### Descrição Do Teste Técnico 02 

- O objetivo deste teste é implementar um jogo de labirinto no flutter. 
- Você deverá replicar a jogabilidade desta versão: https://www.google.com/logos/2010/pacman10-i.html
- O seu jogo deve ser desenvolvido em Flutter utilizando o pacote Bonfire (https://pub.dev/packages/bonfire). 
- O mapa deve ser criado utilizando o Tiled (https://www.mapeditor.org/).

Observações:
- Você pode utilizar imagens que achar na web.
- Replique todas as características do jogo (comidas que incrementam a pontuação, 
- NPCs que circulam pelo labirinto, colisões com o NPC que tiram vidas do jogador,
- itens de poder que permitem comer os NPCs, etc).

### Funcionamento
- O Jogo roda no emulador ou no proprio celular.
- O Jogo tem uma tela inicil.
- O jogo tem 5 fases no total.
- Cada fase tem um número X de inimigos.
- Em cada fase tem uma número X de barris que valem pontos(2).
- Em cada fase tem uma número X de baús que valem pontos(5), e dão a habilidade do Player derrotar os inimigos por um determinado tempo.
- Após pegar todoas os iten do mapa o jogador podera ir pra próxima fase.
- Caso o jogador morra: Ele poderar escolher em repetir o nivel ou voltar pro menu.
- Caso o inimigo encoste no jogador, O jogador irá morrer instantaneamente
- Habilidade de derrotar inmigos: Ao encostar no enimigo ele irá morrer instantaneamente.
### HUD do jogo
- Baús: Baús coletado na respectiva fase (a contagem reseta a cada fase).
- Pontos: Barris coletados na respectiva fase (a contagem reseta a cada fase).
- Score: Pontuação acumulada no decorre das fases(Se o jogador morrer o score reseta).
