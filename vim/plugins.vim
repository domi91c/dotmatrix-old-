call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'

Plug 'crusoexia/vim-javascript-lib'
Plug 'crusoexia/vim-dracula'
Plug 'crusoexia/vim-monokai'
Plug 'muellan/am-colors'
Plug 'dunckr/vim-monokai-soda'
Plug 'kamwitsta/mythos'
Plug 'xero/sourcerer.vim'
Plug 'roosta/srcery'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'ecomba/vim-ruby-refactoring'
" Plug 'rhysd/vim-textobj-ruby'
Plug 'jgdavey/vim-blockle'
" Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'vim-scripts/a.vim'
Plug 'davidklsn/vim-sialoquent'
Plug 'squarefrog/tomorrow-night.vim'
Plug 'tpope/vim-ragtag'
" Plug 'tpope/vim-repeat.git'
Plug 'tpope/vim-unimpaired'
" Plug 'vim-scripts/ZoomWin'
" Plug 'kshenoy/vim-signature'
" Plug 'Shougo/unite.vim'
" Plug 'YorickPeterse/happy_hacking.vim'
" Plug 'basyura/unite-rails'
" Plug 'jgdavey/tslime.vim'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'pelodelfuego/vim-swoop'
" Plug 'zeis/vim-kolor'
" Plug 'chriskempson/base16-vim'
" Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
" Plug 'junegunn/fzf'
" Plug 'justinmk/vim-sneak'
" Plug 'muellan/am-colors'
" Plug 'nelstrom/vim-visual-star-search'
Plug 'rhysd/vim-clang-format'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
" Plug 'NLKNguyen/papercolor-theme'
Plug 'Valloric/YouCompleteMe'
Plug 'christoomey/vim-tmux-navigator'
Plug 'docunext/closetag.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'pangloss/vim-javascript'
Plug 'Chiel92/vim-autoformat'
Plug 'ternjs/tern_for_vim'
" Plug 'puremourning/YouCompleteMe'
Plug 'tacahiroy/ctrlp-funky'
" Plug 'tpope/vim-rsi'
" Plug 'w0ng/vim-hybrid'
" Plug 'lambdalisue/vim-gita'
" Plug 'jacoborus/tender.vim'
Plug 'itchyny/lightline.vim'
" Plug 'itchyny/lightline-powerful'
Plug 'tpope/vim-fugitive'
Plug 'rizzatti/dash.vim'
Plug 'SirVer/ultisnips'

" Initialize plugin system
call plug#end()

" " Plugin key-mappings.
" " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)
" " SuperTab like snippets behavior.
" " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" "imap <expr><TAB>
" " \ pumvisible() ? "\<C-n>" :
" " \ neosnippet#expandable_or_jumpable() ?
" " \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"       \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" For conceal markers.

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
