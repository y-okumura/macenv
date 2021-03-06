xcode-select --install

if ! type brew 2>/dev/null 1>/dev/null
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    sudo sh -c "echo '/usr/local/bin' > /etc/paths.d/brewbin"
fi

brew install ansible

ansible-pull -U https://github.com/y-okumura/macenv.git -K dev-playbook.yml
ansible-pull -U https://github.com/y-okumura/macenv.git alluser-playbook.yml
