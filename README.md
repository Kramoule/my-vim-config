# Config for Vim 8+ only

For Deoplete, install neovim via pip3

```
pip3 install neovim
```

## Replicating the repository on a machine
- Clone the repository (_recursively_ to clone plugins as well):

    ```
    git clone --recursive https://github.com/username/reponame.git
    ```

- Symlink `.vim` and `.vimrc`:

    ```
    ln -sf reponame ~/.vim
    ln -sf reponame/vimrc ~/.vimrc
    ```

- Generate helptags for plugins:
    ```
    vim
    :helptags ALL
    ```
