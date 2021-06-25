"noremap <leader>c "+y
" Python auto run
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd Filetype javascript nnoremap <F5> :w <cr>:exec '!node %' <cr>
autocmd Filetype js nnoremap <F5> :w <cr>:exec '!node %' <cr>

" Shortcut for esc
inoremap kj <ESC> 
cnoremap kj <ESC> 
inoremap jk <Esc>

nnoremap <C-s> :w<CR>

"syntax enable
"syntax on

augroup compileandrun
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++11 % <cr> :vnew <bar> :te "./a.out" <cr><cr>
autocmd filetype cpp nnoremap <f9> :w <bar> !g++ -std=c++11 % <cr> :exec '!./a.out' <CR>
augroup END

" line moving
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" call plug#begin('~/.config/nvim/plugged')
" nmap <C-_> <Plug>NERDCommenterToggle
" vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
" call plug#end()
