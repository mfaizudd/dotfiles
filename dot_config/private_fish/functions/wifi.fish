function wifi
    nmcli dev wifi rescan
    set choice (nmcli -f SSID dev wifi list | tail -n +2 | string trim | sort -u | fzf --prompt 'ssid> ')
    nmcli dev wifi connect $choice
end
