# stow-dotfiles
Projeto de arquivos de configuração para meus setups pessoais

## Pré-requisitos
- [ ] Zsh and [Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [ ] Yazi
- [ ] Neovim
- [ ] Docker engine
- [ ] Lazydocker ([link](https://github.com/jesseduffield/lazydocker))
- [ ] Lazygit ([link](https://github.com/jesseduffield/lazygit))

### Programs setup
```bash 
 brew install yazi neovim lazygit
```
Oh my Zsh:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
#### fzf-tab
```bash
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
```
#### zsh-autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```


### Neovim setup

