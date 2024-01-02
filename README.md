# scripts

* **Resolvendo o problema do grub que não aparece entre Linux Mint (Ubuntu) e Windows:** https://medium.com/@leijerry888/get-grub-menu-back-after-installing-ubuntu-20-04-alongside-windows-dab5de5afc37 
* **splitVideo.sh:** quebra um vídeo em partes onde cada parte deve ter X segundos (parâmetro)
* **brave.sh:** Instala o Navegador Brave em sistemas baseados no Ubuntu
* **create_folder.py:** Cria pastas com o nome de cada arquivo listagem/presente no diretório
* **cat_with_namefile.sh:** Exibe o conteúdo dos arquivos de uma determinada extensão pelo terminal
* **commit_git.sh:** Realiza um commit de todos os repositórios de um determinado diretório
* **compactar_diretorios.sh:** Compacta todos os diretórios de forma recursiva
* **dia_diagram_to_png.sh:** Transforma arquivos .dia de um diretório em arquivos de imagens no formato png
* **driver-video.sh:** Lista e permite selecionar o driver nvidia ou intel usado 
* **dump_postgresql.sh:**
* **encontrar_palavra_em_arquivos_de_um diretorio.sh:** Lista os arquivos que contém uma determinada palavra
* **git_https_to_ssh.md:** converte um repositório github de https para ssh
* **headset.sh:** habilita o uso de headsets (particularmente o microfone deles) no Acer Aspire 5 e no Dell Inspiron 5480 no Linux Mint 20
* **headset_vostro:** Habilita e desabilita o uso de headsets no Dell Vostro 3360
* **install-pgadmin4.sh:** instala o pgadmin4
* **setup-flask-psycopg.sh:** configura e instala o virtualenv base para o desenvolvimento de aplicações flask com driver de conexão postgresql (psycopg)
* **troca_palavras_de_um_diretorio.sh:** substitui um palavra por outra em todos os subdiretórios
* **update_git.sh:** executa para todos os repostórios git de um diretório o comando git pull
* **embuti_legenda.sh:**  Gerar um video com a legenda embutida a partir de um vídeo e uma legenda separada
* **plantuml.sh:**  Exporta para diversos formatos diagramas construídos através da sintaxe PlantUML
```
-- exporta para png
plantuml teste.uml 
--  exporta para svg
plantuml -tsvg teste.uml
```
* **Quantos slots de memória meu pc tem?** 
```bash
sudo dmidecode --type 17 | grep 'Memory Device' --count     
```
* **O que cada slot de memória tem instalado:**
```bash
sudo dmidecode --type 17 | grep -i size
```
* **Saber mais informações a respeito das memórias instaladas:**
```bash
sudo lshw -class memory
```
* **Export my VSCode Extensions:**
```bash
code --list-extensions > extensions.txt
```
* **Import my VSCode Extensions:**
```bash
cat extensions.txt | xargs code --list-extensions {}
```
* **Compactar um arquivo .mp3:**
```bash
lame -b 32  podcast.mp3 podcast-32.mp3
```
* **Notificação no XFCE:** 
```bash
#!/bin/bash
zenity --notification --text "Message"
```



