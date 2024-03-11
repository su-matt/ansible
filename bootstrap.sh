#!/bin/bash


# Check if the OS is Ubuntu
if [[ "$(uname -s)" == "Linux" ]] && [[ -f /etc/os-release ]] && grep -q "Ubuntu" /etc/os-release; then

    sudo apt update && sudo apt upgrade -y
    sudo apt install -y git ansible curl


# Check if the OS is Arch Linux
elif [[ "$(uname -s)" == "Linux" ]] && command -v pacman &> /dev/null; then
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm git ansible

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
