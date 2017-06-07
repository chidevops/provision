if ! type "brew" > /dev/null; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)";
fi
brew install tap phinze/homebrew-cask && brew install brew-cask;
brew cask install vagrant;
brew cask install virtualbox;
brew install packer;
