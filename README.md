# stow-dotfiles
Projeto de arquivos de configuração para meus setups pessoais

## Pré-requisitos
- [ ] Zsh and [Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [ ] Yazi
- [ ] Neovim
- [ ] Docker engine
- [ ] Lazydocker ([link](https://github.com/jesseduffield/lazydocker))
- [ ] Lazygit ([link](https://github.com/jesseduffield/lazygit))

### Zsh setup
```bash 
 sudo apt install zsh fzf
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
#### NerdFont
```bash
mkdir -p ~/.local/share/fonts && \
cd /tmp && \
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip && \
unzip -o Meslo.zip -d ~/.local/share/fonts && \
rm Meslo.zip && \
fc-cache -fv
```

### Neovim setup
Download latest and move to /opt folder
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
```

This line is already added to aliases.zsh, leaving here for reference
```bash
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
```

### Yazi setup
Install Rust:
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
```
Istall gcc:
```bash
sudo apt install build-essential
```
Clone and build Yazi:
```bash
git clone https://github.com/sxyazi/yazi.git
cd yazi
cargo build --release --locked
```
Add Yazi and ya to path:
```bash
sudo mv target/release/yazi target/release/ya /usr/local/bin/
```

### Docker setup


### Neovim setup

