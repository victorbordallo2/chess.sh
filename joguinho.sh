#!/usr/bin/env bash

declare -A msg
set_idioma() {
    if [ "$1" == "EN" ]; then
        msg[titulo]="BASH CHESS MULTIPLAYER"
        msg[xeque]="ATTENTION: KING IN CHECK!"
        msg[mate]="CHECKMATE!"
        msg[turno_bot]="Bot is thinking..."
        msg[promocao]="PAWN PROMOTED TO QUEEN!"
        msg[error_command_not_found]="Error: command not found"
        msg[error_install_termux]="On Termux: pkg install ncurses-utils netcat-openbsd"
        msg[error_install_linux]="On Linux (Debian/Ubuntu): sudo apt install ncurses-bin netcat-openbsd"
        msg[select_language]="Select Language / Escolha o idioma:"
        msg[language_options]="1) English | 2) Português"
        msg[choose_option]="Choose (1-6): "
        msg[no_ranking]="No ranking recorded."
        msg[room_manager_title]="ROOM MANAGER"
        msg[room_ip_hint]="Hint: Your local/VPN IP seems to be:"
        msg[confirm_ip_prompt]="Confirm or type your network/VPN IP: "
        msg[your_ip_used]="Your IP used in the room will be:"
        msg[room_created]="✅ ROOM CREATED SUCCESSFULLY!"
        msg[copy_code]="Copy and send this code to your friend:"
        msg[waiting_friend]="Waiting for your friend to join the room..."
        msg[sending_move]="Sending move..."
        msg[enter_room_title]="ENTER THE ROOM"
        msg[paste_code_prompt]="Paste the room code here: "
        msg[connecting_server]="Connecting to the server... Get ready!"
        msg[connecting_host]="Connecting to host at IP:"
        msg[waiting_host_move]="Waiting for the Host (White) to move..."
        msg[select_piece]="👉 Select your piece with ENTER."
        msg[confirm_destination]="🎯 Confirm destination with ENTER."
        msg[timeout_expired]="⏰ Time expired!"
        msg[illegal_move]="❌ Illegal move!"
        msg[bot_no_moves]="🤖 Bot could not find valid moves (Possible Checkmate/Stalemate)."
        msg[press_enter_back]="Press ENTER to return to the menu..."
        msg[vpn_help_title]="PLAYER IP/VPN HELP"
        msg[vpn_help_text]="Use VPN to connect players on different networks. If you don't have VPN yet, install a client below."
        msg[debian_ubuntu]="Debian/Ubuntu/WSL:"
        msg[install_openvpn]="  sudo apt update"
        msg[install_openvpn2]="  sudo apt install -y openvpn wireguard"
        msg[termux]="Termux:"
        msg[termux_update]="  pkg update && pkg upgrade"
        msg[termux_install]="  pkg install -y openvpn wireguard-tools"
        msg[windows_wsl]="Windows (WSL): use the Ubuntu/WSL terminal and run the Debian commands above."
        msg[after_vpn_use]="After connecting to VPN, use the IP shown below as the host or client IP."
        msg[press_enter]="Press ENTER to continue..."
        msg[controls]="Controls: W, A, S, D | ENTER (Action)"
        msg[waiting_move]="  Waiting for move..."
        msg[white_label]="White"
        msg[black_label]="Black"
        msg[score_label]="Score:"
        msg[blitz_active]="⚡ BLITZ MODE ACTIVE"
        msg[history]="History:"
        msg[white_in_check]="WHITE"
        msg[black_in_check]="BLACK"
        msg[white_wins]="White wins!"
        msg[black_wins]="Black wins!"
        msg[king_fell]="king fell!"
        msg[train_offline]="Train offline (vs Bot)"
        msg[create_room]="Create room (Host)"
        msg[enter_room]="Enter room (Client)"
        msg[mode_blitz]="Blitz mode (Fast - 5s per turn)"
        msg[view_ranking]="View ranking (History)"
        msg[view_ip]="View IP / VPN Help"
        msg[not_available]="Not available"
        msg[not_detected]="Not detected"
        msg[ip_local_label]="Local/VPN IP:"
        msg[ip_public_label]="Public IP:"
    else
        msg[titulo]="XADREZ MULTIPLAYER BASH"
        msg[xeque]="ATENÇÃO: REI EM XEQUE!"
        msg[mate]="XEQUE-MATE!"
        msg[turno_bot]="Bot pensando..."
        msg[promocao]="PEÃO PROMOVIDO PARA RAINHA!"
        msg[error_command_not_found]="Erro: O comando não foi encontrado"
        msg[error_install_termux]="No Termux: pkg install ncurses-utils netcat-openbsd"
        msg[error_install_linux]="No Linux (Debian/Ubuntu): sudo apt install ncurses-bin netcat-openbsd"
        msg[select_language]="Select Language / Escolha o idioma:"
        msg[language_options]="1) English | 2) Português"
        msg[choose_option]="Escolha (1-6): "
        msg[no_ranking]="Nenhum ranking registrado."
        msg[room_manager_title]="GERENCIADOR DE SALA"
        msg[room_ip_hint]="Dica: Seu IP local/VPN parece ser:"
        msg[confirm_ip_prompt]="Confirme ou digite o IP da sua rede/VPN: "
        msg[your_ip_used]="Seu IP usado na sala será:"
        msg[room_created]="✅ SALA CRIADA COM SUCESSO!"
        msg[copy_code]="Copie e mande este código para o seu amigo:"
        msg[waiting_friend]="Aguardando o seu amigo entrar na sala..."
        msg[sending_move]="Enviando jogada..."
        msg[enter_room_title]="ENTRAR NA SALA"
        msg[paste_code_prompt]="Cole o código da sala aqui: "
        msg[connecting_server]="Conectando ao servidor... Prepare-se!"
        msg[connecting_host]="Conectando ao host no IP:"
        msg[waiting_host_move]="Aguardando o Host (Brancas) jogar..."
        msg[select_piece]="👉 Selecione sua peça com ENTER."
        msg[confirm_destination]="🎯 Confirme o destino com ENTER."
        msg[timeout_expired]="⏰ Tempo esgotado!"
        msg[illegal_move]="❌ Movimento ilegal!"
        msg[bot_no_moves]="🤖 Bot não encontrou movimentos válidos (Possível Checkmate/Afogamento)."
        msg[press_enter_back]="Pressione ENTER para voltar ao menu..."
        msg[vpn_help_title]="AJUDA VPN E VERIP DO JOGADOR"
        msg[vpn_help_text]="Use VPN para conectar jogadores em redes diferentes. Se ainda não tiver VPN, instale um cliente abaixo."
        msg[debian_ubuntu]="Debian/Ubuntu/WSL:"
        msg[install_openvpn]="  sudo apt update"
        msg[install_openvpn2]="  sudo apt install -y openvpn wireguard"
        msg[termux]="Termux:"
        msg[termux_update]="  pkg update && pkg upgrade"
        msg[termux_install]="  pkg install -y openvpn wireguard-tools"
        msg[windows_wsl]="Windows (WSL): use o terminal Ubuntu/WSL e execute os comandos Debian acima."
        msg[after_vpn_use]="Após conectar na VPN, use o IP exibido abaixo como IP do host ou cliente."
        msg[press_enter]="Pressione ENTER para continuar..."
        msg[controls]="Controles: W, A, S, D | ENTER (Ação)"
        msg[waiting_move]="  Aguardando movimento..."
        msg[white_label]="Brancas"
        msg[black_label]="Pretas"
        msg[score_label]="Placar:"
        msg[blitz_active]="⚡ MODO BLITZ ATIVO"
        msg[history]="HISTÓRICO:"
        msg[white_in_check]="BRANCAS"
        msg[black_in_check]="PRETAS"
        msg[white_wins]="Brancas venceram!"
        msg[black_wins]="Pretas venceram!"
        msg[king_fell]="rei caiu!"
        msg[train_offline]="Treinar Offline (vs Bot)"
        msg[create_room]="CRIAR SALA (Host)"
        msg[enter_room]="ENTRAR NA SALA (Cliente)"
        msg[mode_blitz]="MODO BLITZ (Rápido - 5s por turno)"
        msg[view_ranking]="VER RANKING (Histórico)"
        msg[view_ip]="VER IP / AJUDA VPN"
        msg[not_available]="Não disponível"
        msg[not_detected]="Não detectado"
        msg[ip_local_label]="IP local / VPN:"
        msg[ip_public_label]="IP público:"
    fi
}

echo "Select Language / Escolha o Idioma:"
echo "1) English | 2) Português"
read -p "> " LANG_CHOICE
[ "$LANG_CHOICE" == "1" ] && set_idioma "EN" || set_idioma "PT"

# Verificação de dependências
for cmd in tput nc base64; do
    if ! command -v $cmd &> /dev/null; then
        echo "${msg[error_command_not_found]} '$cmd'."
        echo "${msg[error_install_termux]}"
        echo "${msg[error_install_linux]}"
        exit 1
    fi
done

# Tabuleiro Tradicional
tabuleiro=(
    "t" "c" "b" "q" "k" "b" "c" "t"
    "p" "p" "p" "p" "p" "p" "p" "p"
    "." "." "." "." "." "." "." "."
    "." "." "." "." "." "." "." "."
    "." "." "." "." "." "." "." "."
    "." "." "." "." "." "." "." "."
    "P" "P" "P" "P" "P" "P" "P" "P"
    "T" "C" "B" "Q" "K" "B" "C" "T"
)

# --- v2.1 & v2.2: Sistema de Ranking e Idiomas ---
RANKING_FILE="ranking_xadrez.txt"
IDIOMA="PT" # Padrão
PONTOS_BRANCAS=0
PONTOS_PRETAS=0
TEMPO_BLITZ=0 # 0 = Desativado

# Cores e Estilos
BG_BRANCO=$(tput setab 7)
BG_PRETO=$(tput setab 0)
BG_MIRA=$(tput setab 4)
BG_SEL=$(tput setab 1)
TEXTO_PECA=$(tput setaf 0)
RESET=$(tput sgr0)

letras_colunas=("A" "B" "C" "D" "E" "F" "G" "H")
PORTA=12345
historico_jogadas=()

CUR_X=4
CUR_Y=6
SELECIONADO=-1

tput civis
fechar_jogo() { tput cnorm; clear; exit; }
trap fechar_jogo SIGINT SIGTERM

mostrar_ip_jogador() {
    local ip_local ip_public
    ip_local=$(hostname -I 2>/dev/null | awk '{print $1}')
    if [ -z "$ip_local" ]; then
        ip_local=$(ip addr 2>/dev/null | awk '/inet / && !/127.0.0.1/ {sub(/\/.*$/, "", $2); print $2; exit}')
    fi
    ip_public="$(command -v curl >/dev/null 2>&1 && curl -s ifconfig.me || echo "${msg[not_available]}")"
    echo "📍 ${msg[ip_local_label]} ${ip_local:-${msg[not_detected]}}"
    echo "🌐 ${msg[ip_public_label]} ${ip_public:-${msg[not_available]}}"
}

exibir_ajuda_vpn() {
    clear
    echo "========================================="
    echo "       ${msg[vpn_help_title]}       "
    echo "========================================="
    echo "${msg[vpn_help_text]}"
    echo ""
    echo "${msg[debian_ubuntu]}"
    echo "${msg[install_openvpn]}"
    echo "${msg[install_openvpn2]}"
    echo ""
    echo "${msg[termux]}"
    echo "${msg[termux_update]}"
    echo "${msg[termux_install]}"
    echo ""
    echo "${msg[windows_wsl]}"
    echo ""
    echo "${msg[after_vpn_use]}"
    echo ""
    mostrar_ip_jogador
    echo ""
    read -p "${msg[press_enter_back]}"
}

desenhar_tabuleiro() {
    # Bufferiza a saída para renderização instantânea no VS Code
    local output=""
    output+="$(tput cup 0 0)"
    output+="    =================================$(tput el)\n"
    output+="       ♟️  ${msg[titulo]} $(tput el)\n"
    output+="    =================================$(tput el)\n"
    output+="      A   B   C   D   E   F   G   H$(tput el)\n"
    output+="    ---------------------------------$(tput el)\n"
    
    local linha coluna idx cor_fundo cor_texto
    for linha in {0..7}; do
        output+="$((8 - linha)) | "
        for coluna in {0..7}; do
            idx=$((linha * 8 + coluna))

            if [ $(((linha + coluna) % 2)) -eq 0 ]; then cor_fundo=$BG_BRANCO; else cor_fundo=$BG_PRETO; fi

            if [ $linha -eq $CUR_Y ] && [ $coluna -eq $CUR_X ]; then
                output+="${BG_MIRA}${TEXTO_PECA} ${tabuleiro[$idx]} ${RESET}"
            elif [ $idx -eq $SELECIONADO ]; then
                output+="${BG_SEL}${TEXTO_PECA} ${tabuleiro[$idx]} ${RESET}"
            else
                if [[ "${tabuleiro[$idx]}" =~ [a-z] ]]; then
                    output+="${cor_fundo}$(tput setaf 1) ${tabuleiro[$idx]} ${RESET}"
                else
                    output+="${cor_fundo}${TEXTO_PECA} ${tabuleiro[$idx]} ${RESET}"
                fi
            fi
        done
        output+=" | $((8 - linha))$(tput el)\n"
    done
    output+="    ---------------------------------$(tput el)\n"
    output+="${msg[controls]}$(tput el)\n"
    output+="-----------------------------------------$(tput el)\n"

    if esta_em_xeque "K"; then output+="$(tput setaf 1)  ⚠️  ${msg[white_in_check]}: ${msg[xeque]}$(tput sgr0)$(tput el)\n"; fi
    if esta_em_xeque "k"; then output+="$(tput setaf 1)  ⚠️  ${msg[black_in_check]}: ${msg[xeque]}$(tput sgr0)$(tput el)\n"; fi

    output+="📊 ${msg[score_label]} ${msg[white_label]} $PONTOS_BRANCAS vs ${msg[black_label]} $PONTOS_PRETAS$(tput el)\n"
    [ $TEMPO_BLITZ -gt 0 ] && output+="$(tput setaf 3)${msg[blitz_active]}$(tput sgr0)$(tput el)\n"

    output+="📜 ${msg[history]}\n"
    
    # Imprime tudo de uma vez (evita cintilação)
    printf "%b" "$output"

    if [ ${#historico_jogadas[@]} -eq 0 ]; then
        echo "  Aguardando movimento...$(tput el)"
    else
        local total=${#historico_jogadas[@]}
        local inicio=0
        [ $total -gt 4 ] && inicio=$((total - 4))
        for ((i=inicio; i<total; i++)); do
            echo "  👉 ${historico_jogadas[$i]}"
        done
    fi
    echo "-----------------------------------------"; tput el
}

traduzir_posicao() {
    local idx=$1
    local col=$((idx % 8))
    local lin=$((8 - (idx / 8)))
    echo "${letras_colunas[$col]}$lin"
}

registrar_log() {
    local io=$1; local id=$2
    local peca=${tabuleiro[$io]}; local destino=${tabuleiro[$id]}
    local log_msg="'$peca' de $(traduzir_posicao $io) para $(traduzir_posicao $id)"
    [ "$destino" != "." ] && log_msg="$log_msg (Abateu '$destino' 💥)"
    historico_jogadas+=("$log_msg")
}

esta_em_xeque() {
    local rei_alvo=$1 # 'K' para branco, 'k' para preto
    local rei_idx=-1
    local i

    # 1. Encontrar a posição atual do Rei
    for i in {0..63}; do
        if [ "${tabuleiro[$i]}" == "$rei_alvo" ]; then
            rei_idx=$i; break
        fi
    done
    [ $rei_idx -eq -1 ] && return 1

    # 2. Verificar se alguma peça oponente pode alcançar essa posição
    local regex_oponente="[a-z]"
    [[ "$rei_alvo" == "k" ]] && regex_oponente="[A-Z]"

    for i in {0..63}; do
        if [[ "${tabuleiro[$i]}" =~ $regex_oponente ]]; then
            if validar_movimento_real $i $rei_idx; then return 0; fi
        fi
    done
    return 1
}

esta_em_xeque_mate() {
    local rei_alvo=$1 # 'K' ou 'k'
    local regex_minhas_pecas="[A-Z]"
    [[ "$rei_alvo" == "k" ]] && regex_minhas_pecas="[a-z]"

    # 1. Se não está em xeque, não pode ser xeque-mate
    if ! esta_em_xeque "$rei_alvo"; then return 1; fi

    # 2. Tentar simular todos os movimentos possíveis de todas as minhas peças
    local i j
    for i in {0..63}; do
        if [[ "${tabuleiro[$i]}" =~ $regex_minhas_pecas ]]; then
            for j in {0..63}; do
                # Se o movimento for teoricamente válido pelas regras da peça
                if validar_movimento_real $i $j; then
                    # Simular o movimento temporariamente
                    local bkp_origem=${tabuleiro[$i]}
                    local bkp_destino=${tabuleiro[$j]}
                    
                    tabuleiro[$j]=$bkp_origem
                    tabuleiro[$i]="."

                    # Verificar se esse movimento removeu o xeque
                    local ainda_xeque=1
                    if ! esta_em_xeque "$rei_alvo"; then ainda_xeque=0; fi

                    # Reverter o tabuleiro
                    tabuleiro[$i]=$bkp_origem
                    tabuleiro[$j]=$bkp_destino

                    # Se encontramos um único movimento que salva o Rei, não é mate
                    if [ $ainda_xeque -eq 0 ]; then return 1; fi
                fi
            done
        fi
    done

    # Se testou tudo e nenhum movimento salvou o Rei: Mate!
    return 0
}

checar_fim_de_jogo() {
    if esta_em_xeque_mate "K"; then
        desenhar_tabuleiro
        echo "========================================="
        echo "💀 ${msg[mate]} ${msg[white_label]} ${msg[king_fell]} 💀"
        echo "            🏆 ${msg[black_wins]}       "
        echo "========================================="
        salvar_resultado "Pretas"
        fechar_jogo
    elif esta_em_xeque_mate "k"; then
        desenhar_tabuleiro
        echo "========================================="
        echo "🎉 ${msg[mate]} ${msg[black_label]} ${msg[king_fell]} 🎉"
        echo "            🏆 ${msg[white_wins]}       "
        echo "========================================="
        salvar_resultado "Brancas"
        fechar_jogo
    fi
}

validar_movimento_real() {
    local io=$1; local id=$2
    local peca=${tabuleiro[$io]}; local destino=${tabuleiro[$id]}
    local ox=$((io % 8)); local oy=$((io / 8))
    local dx=$((id % 8)); local dy=$((id / 8))
    local diff_x=$((dx - ox)); local diff_y=$((dy - oy))
    local abs_x=${diff_x#-}
    local abs_y=${diff_y#-}

    if [[ "$peca" =~ [A-Z] ]] && [[ "$destino" =~ [A-Z] ]]; then return 1; fi
    if [[ "$peca" =~ [a-z] ]] && [[ "$destino" =~ [a-z] ]]; then return 1; fi

    case "${peca^^}" in
        P) 
            if [[ "$peca" =~ [A-Z] ]]; then 
                if [ $diff_x -eq 0 ] && [ $diff_y -eq -1 ] && [ "$destino" == "." ]; then return 0; fi
                if [ $diff_x -eq 0 ] && [ $diff_y -eq -2 ] && [ $oy -eq 6 ] && [ "$destino" == "." ] && [ "${tabuleiro[$(((oy-1)*8+ox))]}" == "." ]; then return 0; fi
                if [ $abs_x -eq 1 ] && [ $diff_y -eq -1 ] && [[ "$destino" =~ [a-z] ]]; then return 0; fi
            else 
                if [ $diff_x -eq 0 ] && [ $diff_y -eq 1 ] && [ "$destino" == "." ]; then return 0; fi
                if [ $diff_x -eq 0 ] && [ $diff_y -eq 2 ] && [ $oy -eq 1 ] && [ "$destino" == "." ] && [ "${tabuleiro[$(((oy+1)*8+ox))]}" == "." ]; then return 0; fi
                if [ $abs_x -eq 1 ] && [ $diff_y -eq 1 ] && [[ "$destino" =~ [A-Z] ]]; then return 0; fi
            fi
            return 1 ;;
        T) 
            [ $diff_x -ne 0 ] && [ $diff_y -ne 0 ] && return 1
            local sx=0; [ $diff_x -gt 0 ] && sx=1; [ $diff_x -lt 0 ] && sx=-1
            local sy=0; [ $diff_y -gt 0 ] && sy=1; [ $diff_y -lt 0 ] && sy=-1
            local cx=$((ox + sx)); local cy=$((oy + sy))
            while [ $cx -ne $dx ] || [ $cy -ne $dy ]; do
                [ "${tabuleiro[$((cy * 8 + cx))]}" != "." ] && return 1
                cx=$((cx + sx)); cy=$((cy + sy))
            done
            return 0 ;;
        C) 
            if { [ $abs_x -eq 1 ] && [ $abs_y -eq 2 ]; } || { [ $abs_x -eq 2 ] && [ $abs_y -eq 1 ]; }; then return 0; fi
            return 1 ;;
        B) 
            [ $abs_x -ne $abs_y ] && return 1
            local sx=1; [ $diff_x -lt 0 ] && sx=-1
            local sy=1; [ $diff_y -lt 0 ] && sy=-1
            local cx=$((ox + sx)); local cy=$((oy + sy))
            while [ $cx -ne $dx ] && [ $cy -ne $dy ]; do
                [ "${tabuleiro[$((cy * 8 + cx))]}" != "." ] && return 1
                cx=$((cx + sx)); cy=$((cy + sy))
            done
            return 0 ;;
        Q) 
            if [ $diff_x -eq 0 ] || [ $diff_y -eq 0 ] || [ $abs_x -eq $abs_y ]; then
                local sx=0; [ $diff_x -gt 0 ] && sx=1; [ $diff_x -lt 0 ] && sx=-1
                local sy=0; [ $diff_y -gt 0 ] && sy=1; [ $diff_y -lt 0 ] && sy=-1
                local cx=$((ox + sx)); local cy=$((oy + sy))
                while [ $cx -ne $dx ] || [ $cy -ne $dy ]; do
                    [ "${tabuleiro[$((cy * 8 + cx))]}" != "." ] && return 1
                    cx=$((cx + sx)); cy=$((cy + sy))
                done
                return 0
            fi
            return 1 ;;
        K) 
            [ $abs_x -le 1 ] && [ $abs_y -le 1 ] && return 0
            return 1 ;;
    esac
}

verificar_promocao() {
    local idx=$1
    local peca=${tabuleiro[$idx]}
    local linha=$((idx / 8))

    if [ "$peca" == "P" ] && [ $linha -eq 0 ]; then
        tabuleiro[$idx]="Q"
        echo "${msg[promocao]}"
        sleep 1
    elif [ "$peca" == "p" ] && [ $linha -eq 7 ]; then
        tabuleiro[$idx]="q"
        echo "${msg[promocao]}"
        sleep 1
    fi
}

controle_mira() {
    local tipo_peca=$1
    SELECIONADO=-1
    while true; do
        desenhar_tabuleiro
        if [ $SELECIONADO -eq -1 ]; then
            echo "${msg[select_piece]}"
        else
            echo "${msg[confirm_destination]}"
        fi

        if [ $TEMPO_BLITZ -gt 0 ]; then
            read -t $TEMPO_BLITZ -s -n 1 tecla || { echo "${msg[timeout_expired]}"; sleep 1; return 1; }
        else
            read -s -n 1 tecla
        fi

        case "$tecla" in
            w|W) [ $CUR_Y -gt 0 ] && CUR_Y=$((CUR_Y - 1)) ;;
            s|S) [ $CUR_Y -lt 7 ] && CUR_Y=$((CUR_Y + 1)) ;;
            a|A) [ $CUR_X -gt 0 ] && CUR_X=$((CUR_X - 1)) ;;
            d|D) [ $CUR_X -lt 7 ] && CUR_X=$((CUR_X + 1)) ;;
            "") 
                local atual=$((CUR_Y * 8 + CUR_X))
                if [ $SELECIONADO -eq -1 ]; then
                    [[ "${tabuleiro[$atual]}" =~ $tipo_peca ]] && SELECIONADO=$atual
                else
                    if validar_movimento_real $SELECIONADO $atual; then
                        registrar_log $SELECIONADO $atual
                        tabuleiro[$atual]=${tabuleiro[$SELECIONADO]}
                        tabuleiro[$SELECIONADO]="."
                        X_ORIGEM=$((SELECIONADO % 8)); Y_ORIGEM=$((SELECIONADO / 8))
                        X_DESTINO=$((CUR_X)); Y_DESTINO=$((CUR_Y))
                        verificar_promocao $atual
                        return 0
                    else
                        echo "${msg[illegal_move]}"
                        sleep 1
                        SELECIONADO=-1
                    fi
                fi
                ;;
        esac
    done
}

turno_bot() {
    echo "🤖 ${msg[turno_bot]}"
    local pecas_pretas=() i io id tentativas=0
    for i in {0..63}; do [[ "${tabuleiro[$i]}" =~ [a-z] ]] && pecas_pretas+=("$i"); done
    
    # Tenta encontrar um movimento aleatório válido por até 500 vezes
    while [ $tentativas -lt 500 ]; do
        io=${pecas_pretas[$((RANDOM % ${#pecas_pretas[@]}))]}
        id=$((RANDOM % 64))
        if validar_movimento_real $io $id; then
            registrar_log $io $id
            tabuleiro[$id]=${tabuleiro[$io]}
            tabuleiro[$io]="."
            verificar_promocao $id
            return 0
        fi
        ((tentativas++))
    done
    echo "${msg[bot_no_moves]}"
    sleep 2
}

clear
echo "========================================="
echo "       ♟️  ${msg[titulo]}        "
echo "========================================="
echo "1) ${msg[train_offline]:-Treinar Offline (vs Bot)}"
echo "2) ${msg[create_room]:-CRIAR SALA (Host)}"
echo "3) ${msg[enter_room]:-ENTRAR NA SALA (Cliente)}"
echo "4) ${msg[mode_blitz]:-MODO BLITZ (Rápido - 5s por turno)}"
echo "5) ${msg[view_ranking]:-VER RANKING (Histórico)}"
echo "6) ${msg[view_ip]:-VER IP / AJUDA VPN}"
echo "========================================="
read -p "${msg[choose_option]}" MODO

if [ "$MODO" == "4" ]; then
    TEMPO_BLITZ=5
    MODO=1
elif [ "$MODO" == "5" ]; then
    [ -f "$RANKING_FILE" ] && cat "$RANKING_FILE" || echo "${msg[no_ranking]}"
    exit 0
fi

case $MODO in
    1)
        while true; do
            controle_mira "[A-Z]"; checar_fim_de_jogo
            desenhar_tabuleiro; turno_bot; checar_fim_de_jogo
        done ;;
    2)
        clear
        echo "========================================="
        echo "           🌐 ${msg[room_manager_title]}        "
        echo "========================================="
        SUGESTAO_IP=$(hostname -I 2>/dev/null | awk '{print $1}')
        if [ -z "$SUGESTAO_IP" ]; then
            SUGESTAO_IP=$(ip addr 2>/dev/null | awk '/inet / && !/127.0.0.1/ {sub(/\/.*$/, "", $2); print $2; exit}')
        fi
        echo "${msg[room_ip_hint]} ${SUGESTAO_IP:-${msg[not_detected]}}"
        read -p "${msg[confirm_ip_prompt]}" MEU_IP
        MEU_IP=${MEU_IP:-$SUGESTAO_IP}
        echo "${msg[your_ip_used]} $MEU_IP"
        
        # Transforma o IP no código base64
        CODIGO_SALA=$(echo -n "$MEU_IP" | base64)
        
        echo ""
        echo "${msg[room_created]}"
        echo "${msg[copy_code]}"
        echo "👉 $CODIGO_SALA"
        echo "-----------------------------------------"
        echo "${msg[waiting_friend]}"

        nc -l -p $PORTA -q 1 > /dev/null
        while true; do
            controle_mira "[A-Z]"; checar_fim_de_jogo
            desenhar_tabuleiro; echo "${msg[sending_move]}"
            local resposta xo yo xd yd idx_o idx_d
            resposta=$(echo "$X_ORIGEM $Y_ORIGEM $X_DESTINO $Y_DESTINO" | nc -l -p $PORTA -q 1)
            read xo yo xd yd <<< "$(echo $resposta | tr -d '\r')"
            
            idx_o=$((yo * 8 + xo)); idx_d=$((yd * 8 + xd))
            [ -n "$xo" ] && registrar_log $idx_o $idx_d
            tabuleiro[$idx_d]=${tabuleiro[$idx_o]}; tabuleiro[$idx_o]="."
            verificar_promocao $idx_d
            checar_fim_de_jogo
        done ;;
    3)
        clear
        echo "========================================="
        echo "           🚪 ${msg[enter_room_title]}             "
        echo "========================================="
        read -p "${msg[paste_code_prompt]}" CODIGO_SALA
        
        # Descriptografa o código de volta para o IP
        IP_REDE=$(echo -n "$CODIGO_SALA" | base64 -d)
        
        echo "${msg[connecting_server]}"
        sleep 1
        
        echo "${msg[connecting_host]} $IP_REDE"
        while true; do
            desenhar_tabuleiro; echo "${msg[waiting_host_move]}"
            local jogada xo yo xd yd idx_o idx_d
            jogada=$(nc -w 1000 $IP_REDE $PORTA)
            read xo yo xd yd <<< "$(echo $jogada | tr -d '\r')"
            
            idx_o=$((yo * 8 + xo)); idx_d=$((yd * 8 + xd))
            tabuleiro[$idx_d]=${tabuleiro[$idx_o]}; tabuleiro[$idx_o]="."
            verificar_promocao $idx_d
            checar_fim_de_jogo
            
            desenhar_tabuleiro; controle_mira "[a-z]"
            echo "$X_ORIGEM $Y_ORIGEM $X_DESTINO $Y_DESTINO" | nc $IP_REDE $PORTA
            checar_fim_de_jogo
        done ;;
    6)
        exibir_ajuda_vpn
        exit 0 ;;
esac
fechar_jogo 
# Fim do código
# Autor: Victor Bordallo @victorbordallo2
# Licença: MIT
