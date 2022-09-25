"""
" Config
"""
set number
set nu
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
set laststatus=2
set tags=tags
set omnifunc=syntaxcomplete#Complete
set statusline+=%F\ %l\:%c " filename linenum:colnum
set ignorecase " Ignore case in search...
set smartcase " ...unless we use capitals in search
set scrolloff=8
set signcolumn=yes

colorscheme ghdark

"" Man pages
runtime! ftplugin/man.vim

syntax on

"""
" File Types
"""
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType md setlocal shiftwidth=2 tabstop=2
autocmd FileType less setlocal shiftwidth=2 tabstop=2
autocmd Filetype javascript setlocal tabstop=2 sts=2 shiftwidth=2
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd Filetype yml setlocal shiftwidth=2 commentstring=#\ %s
autocmd Filetype yaml setlocal shiftwidth=2 commentstring=#\ %s

"""
" Key Mappings
"""

let mapleader = " "

nnoremap <Leader>p :set paste!<CR>
nnoremap <Leader>pp :Prettier<CR>
nnoremap <Leader>n :set nonumber!<CR>
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>ct :CommandT<CR>
nnoremap <Leader>gg :GitGutterToggle<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>h :split<CR>
nnoremap <Leader>nh :nohl<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>h :nohlsearch<CR>
nnoremap <Leader>w <C-w>
nnoremap <Leader>wc g<C-g><CR>
nnoremap <expr> <Leader>s exists('g:syntax_on') ? ':syntax off<cr>' : ':syntax enable<cr>'
nnoremap <silent> <C-Left> :TmuxNavigateLeft<cr> 
nnoremap <silent> <C-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <C-Up> :TmuxNavigateUp<cr> 
nnoremap <silent> <C-Right> :TmuxNavigateRight<cr> 
nnoremap <silent> <C-/> :TmuxNavigatePrevious<cr>

"" splits
nnoremap <Leader>vs :vsplit<CR>
nnoremap <Leader>hs :split<CR>

"""
"
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf

nnoremap <C-f> Files

"" set max line-length to 80
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 80)

let python_highlight_all = 1

hi SpellBad ctermfg=white ctermbg=red guifg=#ffffff guibg=#ffaf5f
hi SpellCap ctermfg=white ctermbg=red guifg=#ffdf00 guibg=#ffaf5f

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"""
" PLUGINS
"""
call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ianks/vim-tsx'
Plug 'github/copilot.vim'
Plug 'windwp/nvim-autopairs'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'onsails/lspkind.nvim'
Plug 'kdheepak/lazygit.nvim'
Plug 'iamcco/markdown-preview.nvim'

call plug#end()

"""
" Copilot
"""

" Remap copilot autocomplete
" imap <silent><script><expr> <C-tab> copilot#Accept("\<CR>")
" let g:copilot_no_tab_map = v:true


" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
set completeopt=menu,menuone,noselect

"""
" LazyGit
"""
nnoremap <silent> <leader>gg :LazyGit<CR>

"""""""""
" FOLDS
"""""""""
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
nnoremap <Leader>z zR<CR>

set foldmethod=indent
set foldlevel=0
set foldclose=all

"""
" NerdTree
"""
let NERDTreeShowHidden=1

"""
" Autopair
"""
lua << EOF
require("nvim-autopairs").setup {}
EOF

"""
" Requires
"""
lua dofile('/home/paul/.config/nvim/nvim-cmp.lua')
lua dofile('/home/paul/.config/nvim/lsp-config.lua')
