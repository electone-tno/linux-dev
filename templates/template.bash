#!/bin/bash

#####################################################
#                                                   #
# Filename:                                         #
# Description:                                      #
# Author:       Elton M. Reformado                  #
#               elton.reformado@gmail.com           #
#                                                   #
#     Copyright (C) 20xx-20xx                       #
#                                                   #
#####################################################

exit_script()
{
    echo "Exiting ..."
}

trap "exit_script" SIGINT

show_usage()
{
    echo "Usage: ${0##*/} <options>"
    echo "Options:"
    exit 1
}

while getopts "h" setup_opt
do
    case $setup_opt in
        h)
            help_flag=1
            ;;
        *)
            help_flag=1
            ;;
    esac
done