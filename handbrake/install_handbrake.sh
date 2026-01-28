
#!/usr/bin/env bash
set -ex


#TODO remove need for this file

# Install Discord from deb
#apt-get update
#curl -L -o handbrake.deb  "https://www.deb-multimedia.org/pool/main/h/handbrake-dmo/handbrake-gtk_1.9.2-dmo1+deb13u4_amd64.deb"
#apt-get -y install handbrake
#rm handbrake.deb

# Default config values
# mkdir -p $HOME/.config/discord/
# echo '{"SKIP_HOST_UPDATE": true}' > $HOME/.config/discord/settings.json

# Desktop file setup
# sed -i "s@Exec=/usr/bin/handbrake@Exec=/usr/bin/handbrake--no-sandbox@g"  /usr/share/applications/handbrake.desktop
# cp /usr/share/applications/handbrake.desktop $HOME/Desktop/
# chmod +x $HOME/Desktop/handbrake.desktop

# Cleanup
if [ -z ${SKIP_CLEAN+x} ]; then
    apt-get autoclean
    rm -rf \
        /var/lib/apt/lists/* \
        /var/tmp/* \
        /tmp/*
fi

# Cleanup for app layer
chown -R 1000:0 $HOME
find /usr/share/ -name "icon-theme.cache" -exec rm -f {} \;