" Set leader key
let mapleader = " "

" save a file as sudo by :W
command! W execute 'silent w !sudo tee % > /dev/null' | edit!
