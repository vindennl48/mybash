#!/usr/bin/env bash

                     ######################
                     ## ALIASES FOR BASH ##
                     ######################
##################################################################
#                 Created by: Mitchell Woodbine                  #
#                   mitchellwoodbine@gmail.com                   #
#               https://github.com/vindennl48/mybash             #
##################################################################
##################################################################
# NOTES TO SELF:                                                 #
# - refer to link: http://tldp.org/LDP/abs/html/ : for more      #
#   informtion on bash programming techniques                    #
##################################################################

#open cheat files
alias cheatbash="vim ~/bin/mybash/bashcheat"
alias cheatgit="vim ~/bin/mybash/gitcheat"

#edit bash file
alias editbash="code ~/bin/mybash/.bash_aliases"

alias p='python3'
alias CLEAR='clear'
alias go='cd'
alias excel='libreoffice --calc'
alias rshift='redshift -o 3500'
alias calc='galculator'
alias regen='DISPLAY=:0.0 compiz --replace &'
alias git-gui='git citool'

#make directory
alias wf="mkdir"
#make textfile
wt() { 
    touch $1.txt 
}

#delete directory
alias rmdir="rm -rf"
#copy all contents
cpall() {
    cp -a /. $1/
}
#copy folder and contents
cpdir() { 
    cp -a $1 $2
}
#rename file or folder
rename() {
    mv $1 $2
}

#open file in gui
alias goo="xdg-open ."

#go to desktop
alias godesk="cd ~/Desktop"
alias godocu="cd ~/Documents"

#go back to previous directory
alias back='cd "$OLDPWD"'

#different form of ls
alias lsh='ls -lhXG' # long listing, human-readable, sort by extension, do not show group info

## SAVE FUNCTIONS ##
##################################################################
#save text in backup file
LOCATION="$HOME"
save() { 
    if test -e /c/Users/SHOP/.savebup; then
        echo "$@" >> $LOCATION/.savebup
    else
        echo "$@" > $LOCATION/.savebup
    fi
}

#get last 10 entries from .savebup
getsave() {
    if test -e /c/Users/SHOP/.savebup; then
        tail $LOCATION/.savebup
    else
        echo "There is nothing saved..."
    fi
}

#edit .savebup
editsave() {
    if test -e /c/Users/SHOP/.savebup; then
        code $LOCATION/.savebup
    else
        echo "There is nothing saved..."
    fi
}
##################################################################

