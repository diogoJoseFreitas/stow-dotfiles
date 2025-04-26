alias virt-manager='env GTK_THEME=Adwaita:dark virt-manager'

alias gs='git status'
alias glog='git log --oneline'
alias lzg='lazygit'

# Shut Down PC
byebye() { 
  echo -n "Are you sure you want to shut down? [Y/N]: "
  read confirm
  if [[ $confirm == [Yy] ]]; then 
    shutdown -h now 
  else 
    echo "Shutdown canceled."
  fi
}
