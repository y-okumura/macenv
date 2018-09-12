xcode-select --install

if ! type brew 2>/dev/null 1>/dev/null
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install ansible

ansible-pull -U https://github.com/y-okumura/macenv.git -K dev-playbook.yml
