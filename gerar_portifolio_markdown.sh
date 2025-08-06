#!/bin/bash

# Arquivo de saída Markdown
output="portfolio.md"

# Cabeçalho do markdown
cat <<EOF > "$output"
# Portfólio de Vendas

Veja abaixo nossos produtos disponíveis:

EOF

# Processa cada imagem
for img in *.jpg *.jpeg *.png; do
    [[ -e "$img" ]] || continue  # pula se não houver arquivos
    nome_ext="${img%.*}"
    extensao="${img##*.}"

    # Pega o último "_" como separador de preço
    preco="${nome_ext##*_}"
    nome="${nome_ext%_*}"
    nome_formatado="${nome//_/ }"

    cat <<EOF >> "$output"
---

### $nome_formatado

![${nome_formatado}]($img)

**Preço:** R\$ $preco

EOF
done

echo "Arquivo '$output' gerado com sucesso!"

