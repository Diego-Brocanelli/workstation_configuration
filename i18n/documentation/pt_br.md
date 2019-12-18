# Configuração da estação de trabalho

Script shell para automatizar instalações e configurações estação de trabalho para um desenvolvedor web.

## Requisitos

- Suporte a pacotes de `snaps`

## Compatibilidade

Os testes foram realizados no Linux Mint 19.2 e Ubuntu 19.10

## Configurações

Você pode editar o arquivo `setup.sh` informando o que deseja instalar.

Para fazer isso, basta abrir o arquivo e informar com `true` ou `false` o que você deseja instalar.

Se você quiser que um bloco inteiro não seja instalado, inclua `false` para que não seja executado.

## Como executar o script

1. Faça o download deste repositório.
2. Descompacte.
3. Vá para o diretório descompactado pelo terminal.
4. Execute o comando com:

```
./install.sh
```

O processo perguntará se você deseja continuar

**Como muitos softwares serão instalados, pode demorar, dependendo da sua conexão com a Internet.**

## O que será instalado

- **Softwares**
  - Build Essential
  - Git
  - Snap
  - Vim
- **Servidor**
  - Apache2
  - Nginx
- **Banco de dados**
  - MySQL
- **Linguagens de programação**
  - Composer
  - Go
  - LESS
  - NodeJS
  - PHP5.6
  - PHP7.2
  - PHP7.3
  - PHP7.4
  - SASS
- **Ferramentas**
  - Android Studio
  - DBeaver
  - Git Kraken
  - htop
  - Inkscape
  - MySQL Workbench
  - Photogimp
  - Postman
  - Remmina
  - Skype
  - Slack
  - Sublime Text
  - Telegram
  - VSCode
  - Whatsapp

## Resultado

### Ubuntu 19.10

Resultado da mudança de casa

![imagem tela Home](/prints/ubuntu_19.10/home.png)

Resultado da mudança de diretórios

![Uma imgem dos diretórios](/prints/ubuntu_19.10/dir.png)

## Colaboradores

<a href="https://www.diegobrocanelli.com.br/">
<img src = "https://avatars2.githubusercontent.com/u/4108889?s=460&v=4" width = "150px">
</a>

<a href="https://twitter.com/jeancabral">
<img src = "https://avatars1.githubusercontent.com/u/2077886?s=460&v=4" width = "150px">
</a>

## Como contribuir?

Teste em outras distribuições da família Debian.

Abra uma isseu para que possamos evoluir a ferramenta.

## Licença

[MIT] (LICENÇA)

## Traduções da documentação

[PT-BR] (/ i18n / documentation / pt_br.md)