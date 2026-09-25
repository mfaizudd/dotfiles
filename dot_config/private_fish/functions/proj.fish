function proj
    set -l dir (fd -H -I --max-depth 4 '^\.git$' ~/Projects -x echo {//} | sort | fzf --preview 'ls {}')
    and cd $dir
end
