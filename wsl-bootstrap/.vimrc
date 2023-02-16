syntax on
set statusline=%<%F\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P
set mouse-=a
set laststatus=2
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
