#!/bin/bash


# Check if the OS is Ubuntu
if grep -q microsoft /proc/version || [ "$OS_NAME" == "Linux" ]; then

    sudo apt update && sudo apt upgrade -y
    sudo apt install -y git ansible curl

     if ! [ -x "$(command -v brew)" ] && [ ! -d ~/.linuxbrew ]; then
        echo "Homebrew is not installed. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" -y

        test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)" ; \
        test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" ; \
        echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bashrc
    fi

# # Check if the OS is Arch Linux
# elif [[ "$(uname -s)" == "Linux" ]] && command -v pacman &> /dev/null; then
#     sudo pacman -Syu --noconfirm
#     sudo pacman -S --noconfirm git ansible

# Check if the OS is macOS
elif [[ "$(uname -s)" == "Darwin" ]]; then
    if ! command -v brew &> /dev/null; then
        echo "Homebrew is not installed. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    brew install git ansible

else
    echo "Unsupported operating system."
    exit 1
fi

ansible-playbook --vault-id stop@prompt --vault-id project@prompt bootstrap.yml
