TTY=`stty -g`    # save tty settings

uxnasm ansi-escape-codes.tal ansi-escape-codes.rom

stty raw -echo    # non canonical mode and no echo

uxncli ansi-escape-codes.rom

stty $TTY    # restore tty settings
