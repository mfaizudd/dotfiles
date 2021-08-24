if [ -f $HOME/.profile ] 
then
    emulate sh -c '. ~/.profile'
fi

export ANDROID_HOME=/mnt/linux-data/opt/android/sdk
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin"
