export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/will/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting vscode history)

source $ZSH/oh-my-zsh.sh

alias dev="cd ~/Developer"
alias dotfiles="code ~/Developer/dotfiles"
alias zshconfig="code ~/Developer/dotfiles/zsh/.zshrc"
alias listlinks='ls -la  | grep "\->"'
alias refresh="exec zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

