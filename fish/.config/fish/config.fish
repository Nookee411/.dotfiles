if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

alias v "nvim"
alias vim "nvim"
alias vi "nvim"
alias codi "code-insiders"
alias lg "lazygit"
alias dcl "docker compose logs -f"
alias dc "docker compose"

nvm use lts >/dev/null 2>&1
