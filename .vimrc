let g:pathogen_disabled = ['syntastic']
execute pathogen#infect()

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

"" File Types
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType md setlocal shiftwidth=2 tabstop=2
autocmd FileType less setlocal shiftwidth=2 tabstop=2
"" autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 omnifunc=javascriptcomplete#CompleteJS indentexpr=''
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd Filetype yml setlocal shiftwidth=2 commentstring=#\ %s
autocmd Filetype yaml setlocal shiftwidth=2 commentstring=#\ %s

"" autocmd BufRead,BufNewFile * setlocal signcolumn=auto
highlight LineNr ctermfg=grol
colorscheme ghdark

"" Man pages
runtime! ftplugin/man.vim

"" Splits
"" set splitbelow
"" set splitright

""
"" START Vim-Plug
""

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

""
"" END Vim-Plug
""

syntax on

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

"" disable arrow keys
"" noremap <Up> <Nop>
"" noremap <Down> <Nop>
"" noremap <Left> <Nop>
"" noremap <Right> <Nop>

"" splits
nnoremap <Leader>vs :vsplit<CR>
nnoremap <Leader>hs :split<CR>

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

nnoremap <C-f> Files

"" set max line-length to 80
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 80)

let python_highlight_all = 1

hi SpellBad ctermfg=white ctermbg=red guifg=#ffffff guibg=#ffaf5f
hi SpellCap ctermfg=white ctermbg=red guifg=#ffdf00 guibg=#ffaf5f

""""
"" COC START
"""

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

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gdd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

"""""""""
" FOLDS
"""""""""
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
nnoremap <Leader>z zR<CR>

set foldmethod=indent
set foldlevel=0
set foldclose=all

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


"" CUSTOM COC COLORS
highlight CocHintFloat ctermfg=Yellow  guifg=#ff0000
"""
"" COC END
"""

highlight CocErrorFloat ctermfg=LightYellow

"""
" Vim Closetag START
"""
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

"""
" vim closetag END
"""

let NERDTreeShowHidden=1

"""
" ULTISNIPS
"""
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<f5>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"

"""
" END ULTISNIPS
"""
