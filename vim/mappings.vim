" Leader
let mapleader = " "

" Previous file
nnoremap <leader><tab> :b#<CR>
nnoremap <leader><leader> <C-^>

" Save file
nnoremap <leader>fs :w<CR>

"paste from clipboard
nmap <C-x>p "*p
nmap <C-x>P "*P
vmap <C-x>y "*y
vmap <C-x>Y "*Y

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Source/Edit vimrc
nnoremap <leader>vr :w<CR> :source ~/.vimrc<CR>
nnoremap <leader>ve :e ~/.vimrc<CR>

" Spacemacs window navigation
nnoremap <leader>wv <C-w>v
nnoremap <leader>ws <C-w>s
nnoremap <leader>wc <C-w>c
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>wh <C-w>h

" Spacemacs Commentary
nmap <leader>; gcc
vmap <leader>; gcc


" Command mode navigation
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-x> <right><backspace>
cnoremap <c-l> <S-right>

" create and edit file under cursor
map <leader>gf :e <cfile><cr>


nnoremap <S-m> %

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-v>"

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
" set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>B :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

nnoremap <leader>th :tabprevious<CR>
nnoremap <leader>tl :tabnext<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tq :tabclose<CR>

inoremap <C-o> <Esc>jS
" select in word faster
nnoremap ,w viw

" Tagbar
nmap _ :TagbarOpenAutoClose<CR>

" Clear Search
nnoremap <ESC> :let @/=''<cr> " clear search"

" Emmet
let g:user_emmet_expandabbr_key='<C-a>'

" Select line
nnoremap val $v^

" Vinegar exit
augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
  noremap <buffer> x :Rex<CR>
  noremap <buffer> q :Rex<CR>
endfunction

nmap 0 ^


nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>




" function! MyDeleteAction()
"   " Get the current position and the position of the first char
"   let cursorPosition=getpos(".")
"   normal ^
"   let firstChar=getpos(".")

"   " If the cursor is before the first char, go to the upper line
"   if cursorPosition[2] < firstChar[2]
"     normal! y$0Dk$
"     let cursorPosition=getpos(".")
"     normal! p
"   endif

"   " Go back to the correct position
"   call setpos('.', cursorPosition)
" endfunction

" inoremap <silent> <backspace> <backspace><Esc>:call MyDeleteAction()<CR>
" nnoremap <silent> <leader>bs  <backspace><Esc>:call MyDeleteAction()<CR>

nnoremap \ `
