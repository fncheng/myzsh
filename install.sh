#!/bin/bash

OH_MY_ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
REPO_URL="https://github.com/fncheng/myzsh.git"

# 删除现有 custom 目录
if [ -d "$OH_MY_ZSH_CUSTOM" ]; then
    echo "正在删除现有的 custom 目录..."
    rm -rf "$OH_MY_ZSH_CUSTOM"
    if [ $? -ne 0 ]; then
        echo "删除 custom 目录失败！"
        exit 1
    fi
    echo "删除完成"
fi

# 创建新的 custom 目录
echo "正在创建 custom 目录..."
mkdir -p "$OH_MY_ZSH_CUSTOM"
if [ $? -ne 0 ]; then
    echo "创建 custom 目录失败！"
    exit 1
fi
echo "创建完成"

# 克隆仓库
echo "正在克隆自定义配置仓库..."
git clone "$REPO_URL" "$OH_MY_ZSH_CUSTOM"
if [ $? -ne 0 ]; then
    echo "克隆仓库失败！请检查网络或仓库地址是否正确。"
    exit 1
fi
echo "克隆完成"

# 移动 .zshrc 文件
if [ -f "$OH_MY_ZSH_CUSTOM/.zshrc" ]; then
    echo "正在替换 .zshrc 文件..."
    mv "$OH_MY_ZSH_CUSTOM/.zshrc" "$ZSHRC"
    if [ $? -ne 0 ]; then
        echo "替换 .zshrc 失败！"
        exit 1
    fi
    echo "替换完成"
else
    echo "仓库中未找到 .zshrc 文件，无法进行替换！"
    exit 1
fi

echo "脚本执行完毕！"
