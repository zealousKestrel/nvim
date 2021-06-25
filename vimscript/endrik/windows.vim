" -------------------- window ----------------------------

" set g:python3_host_prog = expand("~/programming/django/webPractice/1/env/bin/python3.8")

" Split Window.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
""    \ quit | endif
"let NERDTreeQuitOnOpen=1
" map <F2> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" window horiz to vertical and otherwise
map <leader>tv <C-w>t<C-w>H
map <leader>ts <C-w>t<C-w>K
" resize window
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Left> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>
" set terminal python
map <leader>tp :new term://bash<CR>ipython3<CR><C-\><C-n><C-w>k 
map <leader>tj :new term://bash<CR>inode<CR><C-\><C-n><C-w>k 
tmap <Esc> <C-\><C-n>

" tabs
"let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <leader>w :bd<CR>
nmap <leader>[ :bfirst<CR>
nmap <leader>] :blast<CR>
" -------------------- window ----------------------------

noremap <leader>dS :lua require('dap').continue()<CR>


let g:UltiSnipsSnippetDirectories=['~/.config/nvim/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


let g:theprimeagen_colorscheme = "onedark"
let g:theprimeagen_colorscheme = "gruvbox"
fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:theprimeagen_colorscheme])
    else
        " TODO: What the way to use g:theprimeagen_colorscheme
        colorscheme gruvbox
    endif

    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    " highlight LineNr guifg=#ff8659
    " highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun
fun! ColorMyPencilsDark()
    " let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    " let g:gruvbox_invert_selection='0'

    let theprimeagen_colorscheme = "onedark"
    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [theprimeagen_colorscheme])
    else
        " TODO: What the way to use g:theprimeagen_colorscheme
        colorscheme onedark
    endif

    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    " highlight LineNr guifg=#ff8659
    " highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun
" call ColorMyPencils()

" Vim with me
" nnoremap <leader>twm :call ColorMyPencils()<CR>
" nnoremap <leader>twb :let g:theprimeagen_colorscheme =
" Restore cursor position, window position, and last search after running a



" = Cursor Color = 
" highlight Cursor guifg=white guibg=black
" highlight iCursor guifg=white guibg=steelblue
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10
" hi CursorLine     guifg=none            guibg=#68deb9
hi Cursor         guifg=#68deb9           guibg=#68deb9
"#A7A7A7
hi CursorIM       guifg=#68deb9           guibg=#68deb9
"#5F5A60
