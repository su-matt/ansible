# ansible

# Todo

1. ohmyzsh setup/ powerlevel10k/ zsh plugins
2. nvm setup
3. neovim setup
4. ssh keys/ ssh config setup
5. dotfiles setup using yadm
6. encrypt ssh keys, gitconfig
7. tmux/ tpm plugin configuration task
8. brew in ubuntu
9. setup work environment using a work tag or something
10. useful apps for work and productivity: Firefox, Slack, Discord, VSCode,
    UpNote, Zoom, WebEx
11. zoxide setup

12. tags for dependencies
13. update os and os config stuff in os-core-setup.yml, ssh, git first, then developer tools, then dotfiles with recurse with yadm, then vscode, then applications, then work stuff
14. sshfs is cool
15. make sure dev tools and productivity tools comes before dotfiles recurse with yadm
    NEVERMIND DONT DO THIS CUZ NEED BREWFILE

## Docker testing

docker pull ubuntu

sudo docker run -it ubuntu /bin/bash
apt update
apt install zsh
apt install curl

### Mac testing

use docker osx

### arch

vm

# To run

if ubuntu, run apt update.
will need to first install git, and sudo. then clone repo, then cd ansible, then chmod +x
bootstrap.sh
then run script

# Todo

bootstrap script to update ubuntu, install git and ansible (if arch, update pacman and install git and ansible etc) then clone ansible in home directory and then
run ansible playbook

fix submodule stuff, .zshrc not working: may need to delete file in ansible

## Errors

if getting locale error, run: sudo dpkg-reconfigure locales

More todos: get powerlevel fonts, brew install eza, remove homebrew script in
bootstrap

also need to have just ubuntu not wsl but do later
