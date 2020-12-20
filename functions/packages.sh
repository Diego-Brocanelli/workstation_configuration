function update_packages() {
    install_echo "Starting to update packages"
    sudo apt update -y 1> /dev/null 2> /dev/stdout
    success_install_echo "Finished updating packages"
}