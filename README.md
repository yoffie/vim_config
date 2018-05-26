# vim_config
My vim config files.

# Prerequisite
Linux
Vim 8 (with python for youcompleteme)

# Install
```
git clone https://github.com/yoffie/vim_config.git  # clone this project
mv vim_config ~/.vim  # mv the files to the right place
cd ~/.vim
mkdir bundle  # install the bundle, which is a plugin management
cd bundle
git clone https://github.com/VundleVim/Vundle.vim.git
```
Then type ```vim``` to start the vim program. In the program type ```:PluginInstall``` to download and install the other plugins. This may take a long time, expesially for the plugin YouCompleteMe. If you donot need the plugin YouCompleteMe, comment the line Plugin 'Valloric/YouCompleteMe' in vimrc.

# Complile YouCompleteMe
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --help  # for help
./install.py --clang-completer  # e.g., complile with C/C++ support
```
