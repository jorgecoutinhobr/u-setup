#!/bin/bash

source ./config/colors.sh

echo "-----------------------------------------------------"
echo -e "    \e[1m${GREEN}Welcome to Jorge Dev Setup!${NONE}\e[0m"
echo "-----------------------------------------------------"
PS3='Do you want install "oh my bash"? (y/n): '
read -r -p "$PS3" response
if [[ $response == "y" ]]; then
  echo -e "${PURPLE}Installing oh my bash...${NONE}"
  source ./software/oh_my_bash.sh
  echo
else
  echo "Skipping oh my bash installation..."
  echo
fi

echo -e "${BOLD}For the next steps, ${GREEN}it is highly recommended${NONE} ${BOLD}to install the dependencies first${NONE}"
while true; do
  echo "-----------------------------------------------------"
  PS3='Please, choose a option: '
  options=("Install dependencies" "Install software defaults by Jorge" "Choose your stack" "Exit")
  select opt in "${options[@]}"
  do
    case $opt in
      "Install dependencies")
        echo -e "${YELLOW}Installing dependencies...${NONE}"
        source ./dependencies/dependencies.sh
        break
        ;;
      "Install software defaults by Jorge")
        echo -e "${CYAN}Installing software defaults by Jorge...${NONE}"
        source ./software/software.sh
        break
        ;;
      "Choose your stack")
        echo
        echo "-----------------------------------------------------"
        PS3='Please, Choose your stack: '
        stacks=("Ruby on Rails" "Elixir and Phoenix" "Java and Spring" "Back")
        select stack in "${stacks[@]}"
        do
          case $stack in
            "Ruby on Rails")
              echo -e "${RED}Installing Ruby, Node and Rails....${NONE}"
              gnome-terminal -- /bin/bash -c "source ./stacks/ror.sh"
              break 2
              ;;
            "Elixir and Phoenix")
              echo -e "${PURPLE}Installing Elixir, Erlang and Phoenix...${NONE}"
              gnome-terminal -- /bin/bash -c "source ./stacks/elixir.sh"
              break 2
              ;;
            "Java and Spring")
              echo -e "${GREEN}Installing Java and Spring...${NONE}"
              gnome-terminal -- /bin/bash -c "source ./stacks/java_spring.sh"
              break 2
              ;;
            "Back")
              break 2
              ;;
            *) echo "Invalid Option $REPLY";;
          esac
        done
        ;;
      "Exit")
        echo
        echo 'Goodbye!'
        echo 'Made with ❤️ by Jorge '
        echo -e "${GREEN}Github: jorgecoutinhobr${NONE}"
        exit 0
        ;;
      *) echo "Invalid Option $REPLY";;
    esac
  done
  echo
done