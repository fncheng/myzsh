#!/bin/bash

rm -rf ~/.oh-my-zsh/custom && mkdir ~/.oh-my-zsh/custom
git clone https://github.com/fncheng/myzsh.git ~/.oh-my-zsh/custom
mv ~/.oh-my-zsh/custom/.zshrc ~
