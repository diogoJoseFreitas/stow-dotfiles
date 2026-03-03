# stow-dotfiles
Projeto de arquivos de configuração para meus setups pessoais.
A única pré definição no caso do [Bluefin](https://projectbluefin.io/) é que será utilizado o terminal padrão + fish + starship.
# Initial Setup:
- Install [Starship](https://starship.rs/):

'''bash
curl -sS https://starship.rs/install.sh | sh
'''

- On the default terminal, execute `stow fish` to get it's setup.
- Create a profile that starts with fish and set it to default.
- Go to that new profile.

## Pré-requisitos
- [ ] Yazi
- [ ] Neovim
- [ ] Docker engine
- [ ] Lazydocker ([link](https://github.com/jesseduffield/lazydocker))
- [ ] Lazygit ([link](https://github.com/jesseduffield/lazygit))

### Programs setup
```bash 
 brew install stow neovim bat
```

# Install and Configure: 
Since you're free to choose between any software to install, you basically need to install the service and ¨stow" it.
## Yazi:
```bash 
 brew install yazi 
```

```bash 
stow yazi
```

## Lazygit:
```bash 
 brew install lazygit
```

```bash 
stow lazygit
```


## Lazydocker:
```bash 
 brew install lazydocker
```

```bash 
stow lazydocker
```
### Neovim setup
