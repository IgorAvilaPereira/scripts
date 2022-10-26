# ex: exportar todos os arquivos de um diretorio (.dia) para png
for D in *.dia; do dia -t png -s 1024x $D; done

# ex: exportar para svg
# dia -t svg aula_particular.dia
