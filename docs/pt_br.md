# Configuração da estação de trabalho

Script shell para automatizar instalações e configurações estação de trabalho para um desenvolvedor web.

## Compatibilidade

Os testes foram realizados no Linux Mint 19.2 e 20.0 e Ubuntu 19.10 e 20.04.

## Configurações

Você deve copiar o arquivo `setup.sh.example` renomear para `setup.sh.` e editar o arquivo informando o que deseja instalar ou não.

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

**Log**

No final do processo é gerado um arquivo de log.

Caminho: /log/installation_log.txt

## O que será instalado

**Softwares**

| Resource | Name |
|---   |---|
| Softwares | Build Essential |
| Softwares | Git |
| Softwares | Vim |

**Servidores**

| Resource | Name |
|---   |---|
| Server | Apache2 |
| Server | Nginx |

**Banco de dados**
 
| Resource | Name |
|---   |---|
| Database | MySQL |
| Database | PostgreSQL |

**Linguagens de programação**

| Resource | Name |
|---   |---|
| Programming languages | Composer |
| Programming languages | Go |
| Programming languages | LESS |
| Programming languages | NodeJS |
| Programming languages | PHP5.6 |
| Programming languages | PHP7.2 |
| Programming languages | PHP7.3 |
| Programming languages | PHP7.4 |
| Programming languages | PHP8.0 |
| Programming languages | SASS |

- **Ferraments**

| Resource | Name |
|---   |---|
| Tools | DBeaver |
| Tools | Git Kraken |
| Tools | htop |
| Tools | Inkscape |
| Tools | MySQL Workbench |
| Tools | Gimp |
| Tools | Insomnia |
| Tools | Remmina |
| Tools | Skype |
| Tools | Slack |
| Tools | Sublime Text |
| Tools | Telegram |
| Tools | VSCode |

## Resultado

### Ubuntu 19.10

Resultado da mudança da home

![imagem tela Home](/prints/ubuntu_19.10/home.png)

Resultado da mudança de diretórios

![Uma imgem dos diretórios](/prints/ubuntu_19.10/dir.png)

## Criador

<a href="https://www.diegobrocanelli.com.br/">
<img src="https://avatars2.githubusercontent.com/u/4108889?s=460&v=4" width="150px">
</a>

## Colaboradores

<a href="https://twitter.com/jeancabral">
<img src = "https://avatars1.githubusercontent.com/u/2077886?s=460&v=4" width = "150px">
</a>

## Como contribuir?

Teste em outras distribuições da família Debian.

Abra uma isseu para que possamos evoluir a ferramenta.

## Licença

[MIT](LICENÇA)

## Traduções da documentação

[EN](./README.md)
[PT-BR](/docs/pt_br.md)