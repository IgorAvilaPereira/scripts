# Central de Automação

## 📌 Visão Geral

Este repositório reúne uma coleção de scripts utilitários para automação de tarefas comuns no dia a dia, incluindo manipulação de arquivos, processamento multimídia, integração com Git e operações com banco de dados.

---

## 🖥️ Interface Gráfica

O arquivo `main.sh` funciona como o **ambiente gráfico principal** do projeto.

Ele centraliza o acesso à maioria dos scripts disponíveis, permitindo executar todas as funcionalidades por meio de uma interface simples e intuitiva.

A interface foi desenvolvida utilizando o Zenity, o que garante:

* Compatibilidade com a **maioria das distribuições Linux**
* Facilidade de uso sem necessidade de terminal
* Integração com ambientes gráficos baseados em GTK

---

## ⚙️ Funcionalidades Disponíveis

### 📁 Arquivos

* Renomear arquivos em lote
* Compactar diretórios
* Converter imagens em PDF
* Converter diagramas:

  * PlantUML → PNG
  * DIA → PNG

### 🎬 Multimídia

* Dividir vídeos em partes (via MP4Box)
* Converter áudio estéreo para mono (via FFmpeg)
* Embutir legendas em vídeos

### 🗄️ Banco de Dados

* Dump de banco PostgreSQL

### 🔧 Sistema

* Reset de áudio
* Execução de scripts administrativos

### 🌐 Git

* Commit com mensagem personalizada
* Atualização de repositórios

---

## 📦 Dependências

As principais dependências são:

* Zenity
* FFmpeg
* MP4Box
* PlantUML
* Dia
* `img2pdf`

Instalação (Debian/Ubuntu):

```bash
sudo apt install zenity ffmpeg gpac plantuml dia img2pdf
```

---

## ▶️ Como Executar

```bash
chmod +x main.sh
./main.sh
```

---

## 💡 Observações

* O projeto foi pensado para uso em ambientes Linux com interface gráfica
* A utilização do Zenity elimina a necessidade de interfaces mais complexas
* Scripts individuais também podem ser executados separadamente, se desejado

---

## 🚀 Objetivo

Fornecer uma central simples, prática e extensível para automação de tarefas comuns, com foco em produtividade e facilidade de uso.

