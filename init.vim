set number

set signcolumn=number


autocmd TextChanged,TextChangedI <buffer> silent write

nnoremap <silent> <Leader><Space> :nohlsearch<CR>

call plug#begin()
" Colorschemes
Plug 'flazz/vim-colorschemes'
set t_Co=256
set background=dark
colorscheme afterglow
" Sensible
Plug 'tpope/vim-sensible'

" Fugitive
Plug 'tpope/vim-fugitive'

" Syntastic:
" Plug 'scrooloose/syntastic'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_enable_signs = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_mode_map = {
"         \ "mode": "active",
"         \ "active_filetypes": ["python", "javascript", "ruby", "php","java", "c", "cpp"],
"         \ "passive_filetypes": [] }
"
" Airline
Plug 'vim-airline/vim-airline'
nnoremap <Leader>= :bnext<CR>
nnoremap <Leader>- :bprevious<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'jsformatter'

" NerdCommenter
Plug 'scrooloose/nerdcommenter'
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Nerdtree
Plug 'scrooloose/nerdtree'
" autocmd vimenter * NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeShowHidden=1

" delimitmate
Plug 'Raimondi/delimitMate'

" ALE
Plug 'dense-analysis/ale'
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_virtualtext_cursor = 'current'
highlight clear SignColumn
highlight ALEWarningSign ctermbg=black
highlight ALEErrorSign ctermbg=black
highlight ALEWarning ctermbg=black
highlight ALEError ctermbg=black
highlight ALEWarningSign ctermfg=yellow
highlight ALEErrorSign ctermfg=red
let g:ale_linters = {
\   'python': ['flake8'],
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'html': ['tidy'],
\   'css': ['stylelint'],
\   'markdown': ['markdownlint'],
\   'json': ['jsonlint'],
\   'yaml': ['yamllint'],
\   'sh': ['shellcheck'],
\   'vim': ['vint'],
\   'go': ['golint'],
\   'rust': ['rustc'],
\   'java': ['checkstyle'],
\}
let g:ale_fixers = {
\   'python': ['autopep8'],
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'html': ['tidy'],
\   'css': ['stylelint'],
\   'markdown': ['prettier'],
\   'json': ['prettier'],
\   'yaml': ['prettier'],
\   'sh': ['shfmt'],
\   'vim': ['vint'],
\   'rust': ['rustfmt'],
\   'java': ['google_java_format'],
\   '*': ['remove_trailing_lines', 'trim_whitespace']
\}

" deoplete
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1

call plug#end()
