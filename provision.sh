#!/bin/bash

#Set Variables
echo -n "Enter USER_NAME for End User > "
read USER_NAME
echo -n "Enter Computer Assignment Number > "
read compnumber
compvar=`echo $USER_NAME | cut -c 1-5`
COMPUTER_NAME=`echo "thq-m-$compvar$compnumber"`
pwvar=`echo $USER_NAME | cut -c 1-2 | tr [a-z] [A-Z]`
defpw=`echo "Changeme$pwvar!"`

echo "Computer Name is : $COMPUTER_NAME"
echo "User Name is : $USER_NAME"

#dynamically create user specific yml file
echo "groups:" > "config/people/$USER_NAME.yml"
echo "    - developer" >> "config/people/$USER_NAME.yml"
echo "recipes:" >> "config/people/$USER_NAME.yml"
echo "    mac_os_x:" >> "config/people/$USER_NAME.yml"
echo "        - osxdefaults::set_computer_name" >> "config/people/$USER_NAME.yml"
echo "attributes:" >> "config/people/$USER_NAME.yml"
echo "    osxdefaults:" >> "config/people/$USER_NAME.yml"
echo "        computername: $COMPUTER_NAME" >> "config/people/$USER_NAME.yml"
echo "    homebrewalt:" >> "config/people/$USER_NAME.yml"
echo "        apps:" >> "config/people/$USER_NAME.yml"
echo "            - git-extras" >> "config/people/$USER_NAME.yml"
echo "        cask_apps:" >> "config/people/$USER_NAME.yml"
echo "            - sourcetree" >> "config/people/$USER_NAME.yml"

kitchenplan provision
