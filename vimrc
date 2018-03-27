execute pathogen#infect()
syntax on
filetype plugin indent on

set t_Co=256
set number
set tabstop=4
set colorcolumn=110

"make jj do esc"
inoremap jj <Esc>

" map c-j c-k to tabn tabp
map <c-j> :tabn <CR>
map <c-k> :tabp <CR>

" for one dark colorscheme
" let g:onedark_termcolors=16
" set background=dark
highlight Normal ctermfg=grey ctermbg=black
colorscheme onedark

" for NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" for smooth scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" for ultisnips

" for js beautify
autocmd FileType javascript noremap <buffer>  <c-p> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-p> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-p> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-p> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-p> :call CSSBeautify()<cr>
