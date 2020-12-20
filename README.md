# Workstation Configuration

Shell script to automate desktop installations and configurations for a web developer.

## Compatibility

Tests were performed on Linux Mint 19.2 and Ubuntu 19.10

## Setup

You can edit the `setup.sh` file stating what you want to be installed or not.

To do this simply open the file and inform with `true` or `false` what you want to install.

If you want an entire block not to be installed, hit `false` that it will not be executed.

## How to run the script

1. Download this repository.
2. Unzip.
3. Go to the directory unzipped by the terminal.
4. Run the command:

```
./install.sh
```

The process will ask if you want to continue

**Because a lot of software is installed, it may take a long time, depending on your internet connection.**

**Log**

At the end of the process a log file is generated.

Path: /log/installation_log.txt

## What will be installed

**Softwares**

| Resource | Name |
|---   |---|
| Softwares | Build Essential |
| Softwares | Git |
| Softwares | Vim |

**Server**

| Resource | Name |
|---   |---|
| Server | Apache2 |
| Server | Nginx |

**Database**
 
| Resource | Name |
|---   |---|
| Database | MySQL |
| Database | PostgreSQL |

**Programming languages**

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

- **Tools**

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

## Result

### Ubuntu 19.10

Result of changing home

![A home image](/prints/ubuntu_19.10/home.png)

Result of changing directories

![A dir image](/prints/ubuntu_19.10/dir.png)

## Creator

<a href="https://www.diegobrocanelli.com.br/">
<img src="https://avatars2.githubusercontent.com/u/4108889?s=460&v=4" width="150px">
</a>

## Contributors


<a href="https://twitter.com/jeancabral">
<img src="https://avatars1.githubusercontent.com/u/2077886?s=460&v=4" width="150px">
</a>

## How to contribute?

Test on other distributions of the Debian family.

Open an isseu so we can evolve the tool.

## License

[MIT](LICENSE)

## Documentation translation

[EN](./README.md)
[PT-BR](/docs/pt_br.md)