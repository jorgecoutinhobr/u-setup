#!/bin/bash
echo "Welcome to Jorge Dev Setup!"

PS3='Do you want install oh my bash? (y/n): '
read -r -p "$PS3" response
if [[ $response == "y" ]]; then
  echo "Installing oh my bash..."
  source ./software/oh_my_bash.sh
else
  echo "Skipping oh my bash installation..."
fi

echo "For the next steps, it is highly recommended to install the dependencies first"

while true; do
  PS3='Please, choose a option: '
  options=("Install dependencies" "Install softwares defaults by Jorge" "Choose your stack" "Exit")
  select opt in "${options[@]}"
  do
    case $opt in
      "Install dependencies")
        echo "Installing dependencies..."
        source ./dependencies/dependencies.sh
        break
        ;;
      "Install softwares defaults by Jorge")
        echo "Installing softwares defaults by Jorge..."
        source ./software/software.sh
        break
        ;;
      "Choose your stack")
        PS3='Please, Choose your stack: '
        stacks=("Ruby on Rails" "Elixir and Phoenix" "Java and Spring" "Back")
        select stack in "${stacks[@]}"
        do
          case $stack in
            "Ruby on Rails")
              echo "Installing Ruby, Node and Rails...."
              source ./stack/ror.sh
              break 2
              ;;
            "Elixir and Phoenix")
              echo "Installing Elixir, Erlang and Phoenix..."
              source ./stack/elixir.sh
              break 2
              ;;
            "Java and Spring")
              echo "Installing Java and Spring..."
              source ./stack/java_spring.sh
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
        exit 0
        ;;
      *) echo "Invalid Option $REPLY";;
    esac
  done
done