#!/bin/bash

read -p "Enter environment dev/qa/prod: " env

case "$env" in 
         dev)
            echo "env is dev"
         ;;
         qa)
             echo "env is qa"
         ;;
         prod)
            echo "env is prod"
         ;;
         *)
            echo "invalid env ..!"
         ;;
    esac     