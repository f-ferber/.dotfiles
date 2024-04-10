# PATH for mac ports
set -gx PATH /opt/local/bin:/opt/local/sbin $PATH

# PATH for python
set -gx PATH $PATH /Users/ferdi/Library/Python/3.9/bin

# PATH for homebrew
set -gx PATH $PATH /opt/homebrew/bin

# PATH for rust/cargo
set -gx PATH $PATH /Users/ferdi/.cargo/bin

if test (uname -s) = "Darwin"
    set -gx PATH /opt/homebrew/opt/coreutils/libexec/gnubin $PATH
    set -gx PATH /opt/homebrew/opt/gnu-sed/libexec/gnubin $PATH
end

# Alias for eza
alias ls="eza --long --all --inode --binary --time-style=long-iso --time=modified"

# Alias for ranger
alias rcd="ranger --choosedir=/tmp/.rangerdir; cd (cat /tmp/.rangerdir)"

# Disable greeting
set fish_greeting ""
set -gx EDITOR "nvim"

if status is-interactive
    # Commands to run in interactive sessions can go here

    # Enable advanced shell history
    atuin init fish | source
end
