# Workstation Configuration

Shell script to automate desktop installations and configurations for a web developer.

## Requirements

- Snaps packet support

## Compatibility

Tests were performed on Linux Mint 19.2 and Ubuntu 19.10

## Setup

You can edit the `setup.sh` file stating what you want to be installed or not.

To do this simply open the file and inform with true or false what you want to install.

If you want an entire block not to be installed, hit `false` that it will not be executed.

## How to run the script

Download this repository.

Unzip.

Go to the directory unzipped by the terminal.

run the command:

```
./install.sh
```

The process will ask if you want to continue

**Because a lot of software is installed, it may take a long time, depending on your internet connection.**

## What will be installed

- **Softwares**
  - Build Essential
  - Git
  - Snap
  - Vim
- **Server**
  - Nginx 
- **Database**
  - MySQL 
- **Programming languages**
  - Composer
  - Go
  - LESS
  - NodeJS
  - PHP5.6
  - PHP7.2
  - PHP7.3
  - PHP7.4
  - SASS
- **Tools**
  - Android Studio
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

## Result

### Ubuntu 19.10

Result of changing home

![A home image](/prints/ubuntu_19.10/home.png)

Result of changing directories

![A dir image](/prints/ubuntu_19.10/dir.png)

## Contributors

<a href="https://www.diegobrocanelli.com.br/">
<img src="https://avatars2.githubusercontent.com/u/4108889?s=460&v=4" width="150px">
</a>

<a href="https://twitter.com/jeancabral">
<img src="https://avatars1.githubusercontent.com/u/2077886?s=460&v=4" width="150px">
</a>

## How to contribute?

Test on other distributions of the Debian family.

Open an isseu so we can evolve the tool.

## License

[MIT](LICENSE)
