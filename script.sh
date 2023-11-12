#!/bin/sh

show_help() {
  echo "Possible arguments:"
  echo "cat"
  echo "dog"
  exit 0
}

main() {

  if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    show_help
  fi

  if [ "$1" = "cat" ]; then
    echo "meow meow meow" > cat.txt
    echo "$(cat cat.txt)"
  elif [ "$1" = "dog" ]; then
    echo "woof woof woof" > dog.txt
    echo "$(cat dog.txt)"
  else
    echo "Wrong argument. For help type -h flag."
  fi
}


main "$@"
