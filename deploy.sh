# TODO refer to Config via env variable
cd ~/Config
for dir in *
do
    case $dir in
        Xresources)
            ln -s ~/Config/Xresources ~/.Xresources
            ;;
        *)
            mkdir -p ~/.config/$dir
            stow $dir -t ~/.config/$dir
            ;;
    esac
done

systemctl --user enable --now emacs
systemctl --user enable --now syncthing.service
systemctl --user enable --now mpd.service
