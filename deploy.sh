# TODO make this into a function
# TODO refer to Config via env variable
cd ~/Config
for dir in *
do
    mkdir -p ~/.config/$dir
    stow $dir -t ~/.config/$dir
done
