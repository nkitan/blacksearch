function validor()
{
if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then                         #Check sh version
     #assume Zsh    
     echo "ZSH Detected! Confirm?"
       read choice
       if [[ "$choice" == 'y' || "$choice" == 'Y' ]];then
         local decider=1
       fi   
elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]; then
      # assume Bash
      echo "Bash Detected! Confirm?"
       read choice
      if [[ "$choice" -eq 'y' || "$choice" -eq 'Y' ]];then
        local decider=2
      fi
else
   # assume something else
       echo "Unknown SHELL!!! try contacting https://github.com/nkitan "      # you can try adding your own sh's, feel free.

fi


#Validation Complete. Proceed to action

if [ "$decider" == '1' ];then
     cd $HOME
     echo 'alias blacksearch="sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u | grep"' >> .zshrc     #append alias to zshrc file
     source .zshrc
     echo "Installed Successfully"

elif [ "$decider" == '2' ];then
      cd $HOME
      echo 'alias blacksearch="sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u | grep"' >> .bashrc   #append alias to bashrc file
      source .bashrc
      echo "Installed Successfully"
fi      

}

validor