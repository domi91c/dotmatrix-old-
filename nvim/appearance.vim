
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" hi Normal ctermbg=none
" highlight Normal ctermbg=none
" highlight NonText ctermbg=none
" highlight LineNr ctermbg=none
" highlight CursorLineNr ctermbg=none
" let g:rehash256 = 1

" colorscheme tender
" colorscheme seoul256

" Lightline
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
""" appear with single buffer
set laststatus=2

" 24bit vim... somehow
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" set termguicolors


let g:dracula_italic = 1

" Theme
syntax enable
set background=dark
" colorscheme nord
" colorscheme srcery
colorscheme tomorrow-night
" colorscheme sourcerer
" colorscheme dracula
" colorscheme monokai-soda
" colorscheme amcolors

" hi NonText ctermbg=none
" hi Normal guibg=NONE ctermbg=NONE

 

