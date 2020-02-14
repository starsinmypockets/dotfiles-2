let g:pathogen_disabled = ['syntastic']
execute pathogen#infect()

set number
set hlsearch
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set titlestring=%F\ %a%r%m
let titlelen=70
set title
set backspace=indent,eol,start
set autoindent
set diffopt+=vertical
set splitright
set splitbelow
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set laststatus=2
set tags=tags

"" File Types
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType less setlocal shiftwidth=2 tabstop=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd FileType python setlocal commentstring=#\ %s
autocmd Filetype yml setlocal shiftwidth=2 commentstring=#\ %s
autocmd Filetype yaml setlocal shiftwidth=2 commentstring=#\ %s

"" autocmd BufRead,BufNewFile * setlocal signcolumn=auto

highlight LineNr ctermfg=grey

"" Man pages
runtime! ftplugin/man.vim

"" Splits
"" set splitbelow
"" set splitright

set ignorecase

syntax on
set background=dark
colorscheme ron


let mapleader = " "

nnoremap <Leader>s :SyntasticReset<CR>
nnoremap <Leader>p :set paste!<CR>
nnoremap <Leader>pp :Prettier<CR>
nnoremap <Leader>n :set nonumber!<CR>
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>ct :CommandT<CR>
nnoremap <Leader>gg :GitGutterToggle<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>h :split<CR>
nnoremap <Leader>nh :nohl<CR>

nnoremap <silent> <C-Left> :TmuxNavigateLeft<cr> 
nnoremap <silent> <C-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <C-Up> :TmuxNavigateUp<cr> 
nnoremap <silent> <C-Right> :TmuxNavigateRight<cr> 
nnoremap <silent> <C-/> :TmuxNavigatePrevious<cr>

"" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"" splits
nnoremap <Leader>vs :vsplit<CR>

let g:ale_pattern_options = {'\.py$': {'ale_enabled': 0}}

"" let g:ale_set_highlights = 0
"" let g:ale_change_sign_column_color = 0
"" let g:ale_sign_column_always = 1
"" let g:ale_sign_error = '✖'
"" let g:ale_sign_warning = '⚠'
"" let g:ale_echo_msg_error_str = '✖'
"" let g:ale_echo_msg_warning_str = '⚠'
"" let g:ale_open_list = 1
"" let g:ale_echo_msg_format = '%severity% %s% [%linter%% code%]'
"" let g:ale_completion_enabled = 1
"" let g:user_emmet_settings = {
"" \  'javascript' : {
"" \      'extends' : 'jsx',
"" \  },
"" \}

"" let g:ale_linters = {
"" \   'javascript': ['eslint'],
"" \   'typescript': ['tsserver', 'tslint']
"" \}

"" let g:ale_fixers = {
"" \    'javascript': ['eslint'],
"" \    'typescript': ['prettier'],
"" \    'vue': ['eslint'],
"" \    'scss': ['prettier'],
"" \    'html': ['prettier']
"" \}

"" let g:ale_fix_on_save = 1
"" let g:ale_sign_warning = '.'
"" let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf

"" set max line-length to 80
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 80)

"" python
set shiftwidth=4
set tabstop=4
set softtabstop=4

let python_highlight_all = 1
