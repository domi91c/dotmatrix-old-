" run
autocmd BufRead,BufNewFile *.js nnoremap <buffer><silent><Leader>z :w<CR> :!clear; node %<cr>
autocmd BufRead,BufNewFile *.rb nnoremap <buffer><silent><Leader>z :w<CR> :!clear; ruby %<cr>
autocmd BufRead,BufNewFile *.py nnoremap <buffer><silent><Leader>z :w<CR> :!clear; python %<cr>
autocmd BufRead,BufNewFile *.cpp nnoremap <buffer><silent><leader>z :execute '!clear; g++ ' . join(map(glob('*.cpp', 0, 1), 'shellescape(v:val, 1)')) . '; ./a.out'<CR>
autocmd BufRead,BufNewFile *.c nnoremap <buffer><silent><Leader>z :w<CR> :!clear; gcc %; ./a.out %<cr>
