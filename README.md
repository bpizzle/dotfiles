# bpizzle dotfiles

## Setup

### With GNU Stow

```sh
brew install stow
cd ~/Projects/dotfiles

stow <package>...
```

#### Further Reading

- <https://www.gnu.org/software/stow/manual/stow.html>
- <https://systemcrafters.net/managing-your-dotfiles/using-gnu-stow/>

### Manual

> This will become increasingly annoying to manage.  Find another way.

```sh
export DOTFILES_DIR="$HOME/Projects/dotfiles"

ln -sf $DOTFILES_DIR/fish/dot-config/fish/config.fish $HOME/.config/fish/config.fish
ln -sf $DOTFILES_DIR/ghostty/dot-config/ghostty/config $HOME/.config/ghostty/config
ln -sf $DOTFILES_DIR/git/dot-config/git/config $HOME/.config/git/config
```

## Install Dependencies

```sh
brew bundle install
```

See `./Brewfile` for what will be installed.

### Colima

You will need to initialize Colima once to set up its virtual machine:

```sh
colima start --cpu 4 --memory 6 --disk 100 --vm-type=vz --mount-type=virtiofs --dns=1.1.1.1
```

After the initial run, you can simply run `colima start` to boot the VM.

#### Further Reading

- <https://ddev.readthedocs.io/en/stable/users/install/docker-installation/#colima>