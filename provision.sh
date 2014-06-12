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

echo $COMPUTER_NAME
echo $USER_NAME

#dynamically create user specific yml file
--------------


------------------

echo "groups:" > "config/people/$USERNAME.yml"
echo "    - developer" >> "config/people/$USERNAME.yml"
echo "recipes:" >> "config/people/$USERNAME.yml"
echo "    mac_os_x:" >> "config/people/$USERNAME.yml"
echo "        - osxdefaults::set_computer_name" >> "config/people/$USERNAME.yml"
echo "attributes:" >> "config/people/$USERNAME.yml"
echo "    osxdefaults:" >> "config/people/$USERNAME.yml"
echo "        computername: $COMPUTER_NAME" >> "config/people/$USERNAME.yml"
echo "    homebrewalt:" >> "config/people/$USERNAME.yml"
echo "        apps:" >> "config/people/$USERNAME.yml"
echo "            - git-extras" >> "config/people/$USERNAME.yml"
echo "        cask_apps:" >> "config/people/$USERNAME.yml"
echo "            - sourcetree" >> "config/people/$USERNAME.yml"



kitchenplan provision
