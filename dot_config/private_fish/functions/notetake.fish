function notetake
    mkdir -p ~/Documents/Notes/Daily/
    pushd ~/Documents/Notes
    nvim ~/Documents/Notes/Daily/(date +%Y-%m-%d).org
    popd
end
