# sudo apt install gpac

# exemplo (quebra o video MAH00124.mp4 em partes de 15 segundos)
# MP4Box -split 15 $1

#!/bin/bash

INPUT="$1"
INTERVALO="${2:-15}"

# validação
if [ -z "$INPUT" ]; then
    echo "Erro: nenhum arquivo informado."
    exit 1
fi

if [ ! -f "$INPUT" ]; then
    echo "Erro: arquivo não encontrado: $INPUT"
    exit 1
fi

# diretório e nome base
DIR="$(dirname "$INPUT")"
BASE="$(basename "$INPUT")"
NAME="${BASE%.*}"

# cria pasta de saída
OUT_DIR="$DIR/${NAME}_split"
mkdir -p "$OUT_DIR"

echo "Arquivo de entrada: $INPUT"
echo "Saída em: $OUT_DIR"
echo "Intervalo: $INTERVALO segundos"

# entra no diretório de saída (ESSENCIAL)
cd "$OUT_DIR" || exit 1

# comando correto (SEM -out)
MP4Box -split "$INTERVALO" "$INPUT"

echo "Split concluído."

