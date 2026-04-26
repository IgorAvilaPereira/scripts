--sudo apt install img2pdf
#!/bin/bash
DIR="$1"

if [ -z "$DIR" ] || [ ! -d "$DIR" ]; then
    echo "Diretório inválido"
    exit 1
fi

OUT="$DIR/convertido.pdf"

# lê arquivos em array (suporta espaços)
mapfile -d '' FILES < <(find "$DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) -print0 | sort -z)

if [ ${#FILES[@]} -eq 0 ]; then
    echo "Nenhuma imagem encontrada."
    exit 1
fi

img2pdf "${FILES[@]}" -o "$OUT"

echo "PDF gerado em: $OUT"
zenity --info \
  --title="Conversão concluída" \
  --text="PDF gerado em:\n$DIR/convertido.pdf"
