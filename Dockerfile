FROM alpine

RUN apk update && apk add neovim shellcheck git lazygit curl npm python3 python3-dev py3-pip && rm /var/cache/apk/*

COPY init.vim  /root/.config/nvim/init.vim

COPY vimrc /root/.vimrc

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
        nvim +PluginInstall +qall

RUN npm i -g bash-language-server yaml-language-server

RUN apk add gcc g++ && pip3 install jedi pynvim && apk del gcc g++ && rm /var/cache/apk/*

WORKDIR /app

ENTRYPOINT nvim
