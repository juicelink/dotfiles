#!/bin/bash

packages=(
  gawk
  git
  zsh
)

sudo apt-get install ${packages[@]}
