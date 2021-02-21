#!/bin/bash

rm -rf ~/.oh-my-zsh/custom/* -y && git clone https://github.com/fncheng/myzsh.git ~/.oh-my-zsh/custom
mv ~/.oh-myzsh/custom/.zshrc ~
