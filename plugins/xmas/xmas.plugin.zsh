# 
#  alias
#
XMASFILE=$ZSH/custom/plugins/xmas/Luces.svg
alias icat="kitty +kitten icat"
alias clear="clear; echo; echo; echo"

#
# Functions
#

function xmas(){
    if ! test -s $HOME/.xmas.svg; then
        # echo copying $XMASFILE to $HOME/.xmas.svg
        cp $XMASFILE $HOME/.xmas.svg
    fi
sed -i 's/3a94db/blabla/g; s/dd5f5f/3a94db/g; s/dcd78f/dd5f5f/g; s/88e172/dcd78f/g ; s/blabla/88e172/g' $HOME/.xmas.svg ; cat $HOME/.xmas.svg| rsvg-convert|   icat --place=`tput cols`x`tput lines`@0x0  --scale-up
}
