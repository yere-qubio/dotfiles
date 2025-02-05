" Tab settings
set softtabstop=4
set tabstop=4
set autoindent
set expandtab
set smartindent
set shiftwidth=4

" Avoid problems when pasting from clipboard (auto-indent)
set pastetoggle=<F2>

" Line numbers
set number relativenumber

" Highlighting settings
set hlsearch
syntax on
nnoremap <Leader><space> :noh<cr>
set termguicolors

" Python Settings
autocmd FileType python set softtabstop=4
autocmd FileType python set tabstop=4
autocmd FileType python set autoindent
autocmd FileType python set expandtab
autocmd FileType python set smartindent
autocmd FileType python set shiftwidth=4
autocmd FileType python map <buffer> <F9> :w<CR>:exec '! python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '! python' shellescape(@%, 1)<CR>
filetype plugin indent on
let g:pyindent_open_paren=4

" YAML settings
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Plugins

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'

Plug 'github/copilot.vim'

" Need sudo apt-get install flake8 shellcheck
Plug 'dense-analysis/ale'

" Needs pip install pynvim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = "/usr/bin/python3"

" Needs pip install jedi
Plug 'zchee/deoplete-jedi'

call plug#end()
