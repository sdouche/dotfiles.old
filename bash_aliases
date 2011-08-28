alias gitka='gitk --all&'
alias tiga='tig --all'
alias t=task
alias tn=tasknote
alias p='pushd'
alias o='popd'
alias oports="echo 'User: Command: Port:'; echo '----------------------------' ; lsof -i 4 -P -n | grep -i 'listen' | awk '{print \$3, \$1, \$9}' | sed 's/ [a-z0-9\.\*]*:/ /' | sort -k 3 -n |xargs printf '%-10s %-10s %-10s\n' | uniq"
