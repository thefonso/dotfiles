# setopt prompt_subst
# export PS1=\`powerline-prompt\`

# Initialize colors.
autoload -U colors
colors

# PROMPT
setopt prompt_subst
export PS1='%n@%m:%~ %{${fg[magenta]}%}$(vcprompt)$%{${fg[default]}%} '

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
