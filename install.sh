DIR=$(cd $(dirname $0) && pwd)

rm -rf $HOME/.config/
rm -rf $HOME/.tmux.conf

ln -s $DIR/.config $HOME/
ln -s $DIR/.tmux.conf $HOME/
