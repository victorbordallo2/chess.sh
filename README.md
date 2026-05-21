# Joguinho de Xadrez em Bash (v1.0)

Um motor de xadrez multiplayer escrito inteiramente em Bash, com suporte a Xeque-mate, Ranking, múltiplos idiomas, modo Blitz e uma nova ajuda de VPN/IP. Este projeto demonstra como criar uma interface interativa e lógica de jogo complexa usando apenas ferramentas de shell.

## Recursos

- **Tabuleiro Renderizado**: Interface visual dinâmica no terminal usando `tput`.
- **Controles de Teclado**: Navegação intuitiva com `W`, `A`, `S`, `D` e `ENTER`.
- **Lógica Completa**: Validação de movimentos e detecção automática de **Xeque** e **Xeque-mate**.
- **Modos de Jogo**:
  - **Treino Offline**: Jogue contra um Bot (movimentos aleatórios válidos).
  - **Multiplayer**: Partidas via rede (LAN/VPN) com troca de IPs via códigos Base64.
  - **Modo Blitz**: Desafio de velocidade com 5 segundos por turno.
- **Sistema de Ranking**: Persistência de vitórias em arquivo local (`ranking_xadrez.txt`).
- **Sistema de Pontuação**: Placar calculado com base no valor das peças capturadas.
- **Internacionalização**: Suporte nativo para **Português e Inglês**.

## Requisitos

- Bash (Linux, macOS, Termux)
- `tput`
- `nc` (netcat)
- `base64`
- `wget` ou `curl` para baixar o script

## Instalação e Download

### 1. Linux (Debian/Ubuntu e derivados)

1. Abra o terminal.
2. Atualize a lista de pacotes:

```bash
sudo apt update
```

3. Instale as dependências:

```bash
sudo apt install -y bash ncurses-bin netcat-openbsd coreutils wget
```

4. Baixe o script diretamente do GitHub:

```bash
wget -O Joguinho.sh https://raw.githubusercontent.com/victorbordallo2/chess.sh/main/joguinho.sh
```

ou com `curl`:

```bash
curl -L -o Joguinho.sh https://raw.githubusercontent.com/victorbordallo2/chess.sh/main/joguinho.sh
```

5. Torne o script executável:

```bash
chmod +x Joguinho.sh
```

### 2. Termux (Android)

1. Abra o Termux.
2. Atualize os repositórios:

```bash
pkg update
pkg upgrade
```

3. Instale as dependências necessárias:

```bash
pkg install -y bash ncurses-utils netcat-openbsd wget coreutils
```

4. Baixe o script:

```bash
wget -O Joguinho.sh https://raw.githubusercontent.com/victorbordallo2/chess.sh/main/joguinho.sh
```

5. Dê permissão de execução ao arquivo:

```bash
chmod +x Joguinho.sh
```

### 3. Windows (CMD + WSL em um só comando)

No Windows, o jogo roda melhor no WSL, mas você pode usar somente o Prompt de Comando (`cmd.exe`) para instalar tudo e baixar o script em um passo.

1. Abra o Prompt de Comando como administrador.
2. Cole e execute este único comando:

```cmd
powershell -Command "wsl --install -d Ubuntu; wsl sudo apt update; wsl sudo apt install -y bash ncurses-bin netcat-openbsd coreutils wget; wsl bash -lc 'wget -O ~/Joguinho.sh https://raw.githubusercontent.com/victorbordallo2/chess.sh/main/joguinho.sh && chmod +x ~/Joguinho.sh && ./Joguinho.sh'"
```

> Esse comando instala o WSL (se ainda não estiver instalado), atualiza o Ubuntu, instala dependências, baixa o script `Joguinho.sh` e já tenta executá-lo.

3. Se o WSL pedir reinicialização ou configuração extra, execute depois apenas:

```cmd
powershell -Command "wsl bash -lc '~/Joguinho.sh'"
```

> Observação: o `cmd.exe` é suficiente para iniciar todo o processo. Não é necessário usar nenhum app extra ou pesquisar manualmente o arquivo.

### 4. Windows sem Git

Se você quer apenas baixar o script sem usar Git, basta usar este comando no `cmd`:

```cmd
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/victorbordallo2/chess.sh/main/joguinho.sh' -OutFile \"$env:USERPROFILE\\Downloads\\Joguinho.sh\""
```

Depois, execute no WSL:

```cmd
powershell -Command "wsl bash -lc 'chmod +x ~/Downloads/Joguinho.sh && ~/Downloads/Joguinho.sh'"
```

> Dica: o modo multiplayer funciona melhor se ambos os jogadores estiverem na mesma VPN ou rede local acessível pelo IP exibido no menu.

## Como jogar

1. Execute o script:

```bash
./Joguinho.sh
```

2. Escolha o modo desejado:

- `1` - Treinar offline (vs bot)
- `2` - Criar sala (host)
- `3` - Entrar na sala (cliente)
- `4` - Modo Blitz (5 segundos por turno)
- `5` - Ver ranking (histórico)
- `6` - Ver IP / Ajuda VPN

3. Siga as instruções na tela para usar o teclado e navegar no menu.

## Ver IP e VPN

- O jogo agora inclui um modo especial para exibir seu IP local/VPN e mostrar comandos de instalação de VPN.
- No menu principal, escolha `6` para ver seu IP atual e receber sugestões de instalação de VPN.
- O script tenta detectar seu IP local automaticamente e também exibe o IP público quando `curl` estiver disponível.
- Se precisar instalar VPN antes do multiplayer:
  - Debian/Ubuntu/WSL:
    - `sudo apt update`
    - `sudo apt install -y openvpn wireguard`
  - Termux:
    - `pkg update && pkg upgrade`
    - `pkg install -y openvpn wireguard-tools`
- Conecte-se à mesma VPN ou rede do adversário antes de criar/entrar na sala.

## Controles

- `W` - mover cursor para cima
- `A` - mover cursor para a esquerda
- `S` - mover cursor para baixo
- `D` - mover cursor para a direita
- `ENTER` - selecionar peça ou confirmar destino

## Modo multiplayer

- O host escolhe ou confirma o IP local/VPN.
- O script gera um código de sala em base64 com o IP.
- O jogador cliente cola esse código para se conectar.
- Ambos devem estar na mesma rede ou VPN e usar a porta `12345`.

> Observação: o multiplayer usa `nc` em modo simples e depende de uma conexão de rede estável.

## Limitações conhecidas

- Regras especiais como en passant, roque e promoção não estão implementadas
- O bot faz movimentos aleatórios válidos, sem estratégia avançada
- O modo multiplayer é uma implementação simplificada e pode ter bugs

## Breve explicação do código

- O jogo verifica dependências essenciais como `tput`, `nc` e `base64` antes de iniciar.
- O tabuleiro é desenhado em terminal usando `tput` e um array de 64 posições.
- O modo multiplayer utiliza `nc` para trocar jogadas entre host e cliente via IP codificado em base64.
- A nova opção de menu (`6`) mostra o IP local/VPN e ajuda a instalar VPNs em Linux e Termux.

## Licença

MIT

## Autor

Este script foi desenvolvido como uma demonstração de jogo de xadrez em Bash.
 
