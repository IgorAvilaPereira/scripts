#!/bin/bash

# Arquivo de saída
output="portfolio.html"

# Cabeçalho HTML
cat <<EOF > "$output"
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Portfólio de Vendas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            background: #f9f9f9;
        }
        .produto {
            border: 1px solid #ccc;
            background: white;
            padding: 10px;
            width: 200px;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        .produto img {
            max-width: 100%;
            height: auto;
        }
        .nome {
            font-weight: bold;
            margin: 10px 0 5px;
        }
        .preco {
            color: green;
            font-size: 1.1em;
        }
    </style>
</head>
<body>
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
    <div class="produto">
        <img src="$img" alt="$nome_formatado">
        <div class="nome">$nome_formatado</div>
        <div class="preco">R\$ $preco</div>
    </div>
EOF
done

# Rodapé HTML
cat <<EOF >> "$output"
</body>
</html>
EOF

echo "Arquivo '$output' gerado com sucesso!"

