xcode-select --install

if ! type brew 2>/dev/null 1>/dev/null
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install ansible

sudo echo '事前にsudoしてないとbecomeがエラーになるみたいなので先にしておく'
ansible-playbook dev-playbook.yml
