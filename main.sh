#!/bin/bash

APP_NAME="Central de Automação"
BASE_DIR="$(dirname "$0")"
LOG_FILE="$BASE_DIR/automacao.log"

# ---------- FUNÇÕES ----------

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

executar_script() {
    CMD="$1"

    (
        echo "10"; sleep 0.3
        echo "# Executando..."
        OUTPUT=$(eval "$CMD" 2>&1)
        echo "70"; sleep 0.3
        echo "# Finalizando..."
        sleep 0.5
        echo "100"
    ) | zenity --progress \
        --title="$APP_NAME" \
        --text="Executando script..." \
        --percentage=0 \
        --auto-close

    log "$CMD"

    zenity --text-info \
        --title="Resultado" \
        --width=700 --height=400 \
        --filename=<(echo "$OUTPUT")
}

selecionar_diretorio() {
    zenity --file-selection --directory --title="$1"
}

selecionar_arquivo() {
    zenity --file-selection --title="$1"
}

entrada_texto() {
    zenity --entry --title="$1" --text="$2"
}

# ---------- MENUS ----------

menu_principal() {
    zenity --list \
        --title="$APP_NAME" \
        --text="Escolha uma categoria:" \
        --column="Categoria" \
        "Arquivos" \
        "Git" \
        "PostgreSQL" \
        "Multimídia" \
        "Sistema" \
        "Logs" \
        "Sair" \
        --height=400 --width=300
}

menu_arquivos() {
    zenity --list \
        --title="Arquivos" \
        --column="Ação" \
        "Renomear" \
        "Compactar" \
        "Imagens → PDF" \
        "Voltar"
}

menu_git() {
    zenity --list \
        --title="Git" \
        --column="Ação" \
        "Commit" \
        "Update" \
        "Voltar"
}

menu_postgres() {
    zenity --list \
        --title="PostgreSQL" \
        --column="Ação" \
        "Dump banco" \
        "Voltar"
}

menu_multimidia() {
    zenity --list \
        --title="Multimídia" \
        --column="Ação" \
        "Split vídeo" \
        "Stereo → Mono" \
        "Voltar"
}

menu_sistema() {
    zenity --list \
        --title="Sistema" \
        --column="Ação" \
        "Resetar áudio" \
        "Parar serviços" \
        "Voltar"
}

# ---------- LOOP PRINCIPAL ----------

while true; do
    CAT=$(menu_principal)
    [ -z "$CAT" ] && break

    case "$CAT" in

        "Arquivos")
            ACAO=$(menu_arquivos)
            case "$ACAO" in
                "Renomear")
                    DIR=$(selecionar_diretorio "Selecione o diretório")
                    [ -n "$DIR" ] && executar_script "bash $BASE_DIR/renomear.sh \"$DIR\""
                    ;;
                "Compactar")
                    DIR=$(selecionar_diretorio "Selecione o diretório")
                    [ -n "$DIR" ] && executar_script "bash $BASE_DIR/compactar_diretorios.sh \"$DIR\""
                    ;;
                "Imagens → PDF")
                    DIR=$(selecionar_diretorio "Selecione imagens")
                    [ -n "$DIR" ] && executar_script "bash $BASE_DIR/imagens_do_diretorio_para_pdf.sh \"$DIR\""
                    ;;
            esac
            ;;

        "Git")
            ACAO=$(menu_git)
            case "$ACAO" in
                "Commit")
                    MSG=$(entrada_texto "Commit" "Mensagem:")
                    [ -n "$MSG" ] && executar_script "bash $BASE_DIR/commit_git.sh \"$MSG\""
                    ;;
                "Update")
                    executar_script "bash $BASE_DIR/update_git.sh"
                    ;;
            esac
            ;;

        "PostgreSQL")
            ACAO=$(menu_postgres)
            case "$ACAO" in
                "Dump banco")
                    DB=$(entrada_texto "Banco" "Nome do banco:")
                    USER=$(entrada_texto "Usuário" "Usuário:")
                    if [ -n "$DB" ] && [ -n "$USER" ]; then
                        executar_script "bash $BASE_DIR/dump_postgresql.sh \"$DB\" \"$USER\""
                    fi
                    ;;
            esac
            ;;

        "Multimídia")
            ACAO=$(menu_multimidia)
            case "$ACAO" in
                "Split vídeo")
                    FILE=$(selecionar_arquivo "Selecione o vídeo")
                    [ -n "$FILE" ] && executar_script "bash $BASE_DIR/splitVideo.sh \"$FILE\""
                    ;;
                "Stereo → Mono")
                    FILE=$(selecionar_arquivo "Selecione o vídeo")
                    [ -n "$FILE" ] && executar_script "bash $BASE_DIR/stereo_video_to_mono.sh \"$FILE\""
                    ;;
            esac
            ;;

        "Sistema")
            ACAO=$(menu_sistema)
            case "$ACAO" in
                "Resetar áudio")
                    executar_script "bash $BASE_DIR/resetar_audio.sh"
                    ;;
                "Parar serviços")
                    executar_script "bash $BASE_DIR/stop-services-vostro.sh"
                    ;;
            esac
            ;;

        "Logs")
            zenity --text-info \
                --title="Logs" \
                --width=700 --height=400 \
                --filename="$LOG_FILE"
            ;;

        "Sair")
            break
            ;;
    esac
done
