if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
#alias
alias nv="nvim"
alias tmux="tmux -2"
alias bugbox="docker start -ai bug"
alias ubuntu="docker start -ai ubuntu"
alias ctfbox="docker start -ai ctf"
alias http-server='python3 -m http.server 8080'
alias php-server='php -S 127.0.0.1:80 -t .'
alias ftp-server='python -m pyftpdlib -u "admin" -P "S3cur3d_Ftp_3rv3r" -p 2121'
