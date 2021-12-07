""""""""""""""""""""""""
"  Init 
""""""""""""""""""""""""
let mapleader = ' '
let g:mapleader = ' '
let maplocalleader = ','
let g:maplocalleader = ','
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
""""""""""""""""""""""""
"  Sets
""""""""""""""""""""""""
set encoding=utf-8
set guicursor=
set splitbelow
set splitright
set mouse=a
set completeopt+=noinsert
set relativenumber
set nohlsearch
set ignorecase smartcase
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set wrap linebreak nolist
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=number
set cmdheight=2
set updatetime=300
set shortmess+=c
set nostartofline
""""""""""""""""""""""""
"  Plugin 
""""""""""""""""""""""""
"" Start
call plug#begin('~/.vim/plugged')
if exists('g:vscode')
  Plug 'asvetliakov/vim-easymotion'
else
"" Plugins
" rice
Plug 'gruvbox-community/gruvbox'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'dylanaraps/wal.vim'
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
" fuzzy
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" snippets
Plug 'fhill2/telescope-ultisnips.nvim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" git
Plug 'nvim-telescope/telescope-github.nvim'
Plug 'cljoly/telescope-repo.nvim'
Plug 'tpope/vim-fugitive'
"help 
Plug 'sudormrfbin/cheatsheet.nvim'
" movement
Plug 'easymotion/vim-easymotion'
Plug 'camgraff/telescope-tmux.nvim'
Plug 'christoomey/vim-tmux-navigator'
" lsp
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'fannheyward/telescope-coc.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'lucasteles/fsi.vim'
" misc
Plug 'norcalli/nvim-terminal.lua'
Plug 'preservim/nerdcommenter', { 'commit': 'a5d1663' }
" markdown
Plug 'ellisonleao/glow.nvim'
" readme
Plug 'vimwiki/vimwiki'
Plug 'tools-life/taskwiki'
Plug 'itchyny/calendar.vim'
"" End
endif
call plug#end()
""""""""""""""""""""""""
"  Mappings
""""""""""""""""""""""""
"" LSP
nnoremap <leader>coc <Cmd>:Telescope coc commands<Cr>
nnoremap <leader>tele <Cmd>:Telescope commands<Cr>
nnoremap <leader>loc <Cmd>:Telescope coc locations<Cr>
nnoremap <leader>ref <Cmd>:Telescope coc references<Cr>
nnoremap <leader>refactor <Plug>(coc-refactor)<Cr>
nnoremap <leader>def <Cmd>:Telescope coc definitions<Cr>
nnoremap <leader>dec <Cmd>:Telescope coc declarations<Cr>
nnoremap <leader>imp <Cmd>:Telescope coc implementations<Cr>
nnoremap <leader>dia <Cmd>:Telescope coc diagnostics<Cr>
nnoremap <leader>sym <Cmd>:Telescope coc document_symbols<Cr>
nnoremap <leader>wsym <Cmd>:Telescope coc workspace_symbols<Cr>
nnoremap <leader>wnn <Cmd>:Telescope coc workspace_diagnostics<Cr>
nnoremap <silent>sh :call <SID>show_documentation()<Cr>
nnoremap <leader>+ <Cmd>:Telescope ultisnips<Cr>
nmap <leader>rn <Cmd>:CocCommand document.renameCurrentWord<Cr>
map <leader>format  <Plug>(coc-format-selected)
xmap ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-fix-current)
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
nnoremap <silent><leader><A-Return> <cmd>FsiEvalBuffer<cr>
"" Multi-Cursor
nmap <silent> <C-i> <Plug>(coc-cursors-position)
xmap <silent> <C-i> <Plug>(coc-cursors-range)
nmap <leader>x  <Plug>(coc-cursors-operator)
"" Comments
nnoremap <leader>/ :call NERDComment(0,'toggle')<CR>
vnoremap <leader>/ :call NERDComment(0,'toggle')<CR>
"" Rice, Vim
nnoremap <leader>color <cmd>call ToggleColors()<cr>
nnoremap <leader>help <cmd>Telescope help_tags<cr>
nnoremap <leader>rr <cmd>source ~/.config/nvim/init.vim<cr><cmd>echo "Sourced vim.rc"<cr>
nnoremap <leader>vimrc <cmd>vsplit<cr><cmd>:e ~/.config/nvim/init.vim<cr>
nnoremap <bs> <cmd>wa<cr><cmd>echo "Saved!"<cr>
"" Movement / Telescope
nnoremap <C-P> <cmd>Telescope find_files<cr>
nnoremap <C-T> <cmd>Telescope<cr>
nnoremap <C-T>t <cmd>Telescope find_files theme=dropdown<cr>
nnoremap <C-N> <cmd>Telescope file_browser<cr>
nnoremap <C-S-P> <cmd>Telescope git_files<cr>
nnoremap <C-T>repo <cmd>Telescope repo list<cr>
nnoremap <leader>p <cmd>Telescope live_grep<cr>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nmap <S-h> <cmd>bprev<cr>
nmap <S-l> <cmd>bnext<cr>
""""""""""""""""""""""""
"  AutoCmd 
""""""""""""""""""""""""
"" Fsharp
autocmd BufNewFile,BufRead *.fs,*.fsi,*.fsx set filetype=fsharp
autocmd BufNewFile,BufRead *.fsproj         set filetype=fsharp_project
""""""""""""""""""""""""
"  Functions 
""""""""""""""""""""""""
"" Autofolding .vimrc
" see http://vimcasts.org/episodes/writing-a-custom-fold-expression/
""" defines a foldlevel for each line of code
function! VimFolds(lnum)
  let s:thisline = getline(a:lnum)
  if match(s:thisline, '^"" ') >= 0
    return '>2'
  endif
  if match(s:thisline, '^""" ') >= 0
    return '>3'
  endif
  let s:two_following_lines = 0
  if line(a:lnum) + 2 <= line('$')
    let s:line_1_after = getline(a:lnum+1)
    let s:line_2_after = getline(a:lnum+2)
    let s:two_following_lines = 1
  endif
  if !s:two_following_lines
      return '='
  else
    if (match(s:thisline, '^"""""') >= 0) &&
       \ (match(s:line_1_after, '^"  ') >= 0) &&
       \ (match(s:line_2_after, '^""""') >= 0)
      return '>1'
    else
      return '='
    endif
  endif
endfunction

""" defines a foldtext
function! VimFoldText()
  " handle special case of normal comment first
  let s:info = '('.string(v:foldend-v:foldstart).' l)'
  if v:foldlevel == 1
    let s:line = ' ◇ '.getline(v:foldstart+1)[3:-2]
  elseif v:foldlevel == 2
    let s:line = '   ●  '.getline(v:foldstart)[3:]
  elseif v:foldlevel == 3
    let s:line = '     ▪ '.getline(v:foldstart)[4:]
  endif
  if strwidth(s:line) > 80 - len(s:info) - 3
    return s:line[:79-len(s:info)-3+len(s:line)-strwidth(s:line)].'...'.s:info
  else
    return s:line.repeat(' ', 80 - strwidth(s:line) - len(s:info)).s:info
  endif
endfunction

""" set foldsettings automatically for vim files
augroup fold_vimrc
  autocmd!
  autocmd FileType vim 
                   \ setlocal foldmethod=expr |
                   \ setlocal foldexpr=VimFolds(v:lnum) |
                   \ setlocal foldtext=VimFoldText() |
     "              \ set foldcolumn=2 foldminlines=2
augroup END
"" Coc show documentation
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
"" Coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"" Require
lua << EOF
require('telescope').load_extension('coc')
require('telescope').load_extension('media_files')
require('telescope').load_extension('ultisnips')
require'terminal'.setup()
require('telescope').load_extension('gh')
require'nvim-web-devicons'.get_icons()
EOF
"" VimWiki
function! VimwikiFindIncompleteTasks()
  lvimgrep /- \[ \]/ %:p
  lopen
endfunction

function! VimwikiFindAllIncompleteTasks()
  VimwikiSearch /- \[ \]/
  lopen
endfunction
"" Rice colors
function ToggleColors()
    if (g:colors_name == "wal")
        colorscheme gruvbox
    else
        colorscheme wal
    endif
endfunction

""""""""""""""""""""""""
"  Settings   
""""""""""""""""""""""""
"" Readme
let g:taskwiki_disable_concealcursor="yes"
let g:vimwiki_folding = 'list'
let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr, pre, script'
let g:fsharp#fsi_focus_on_send = 0 " 0 to not to focus.
let g:vimwiki_list = [{'path': '$HOME/org/wiki',
      \ 'path_html': '$HOME/skogix.github.io',
      \ 'template_path': '$HOME/org/wiki/templates',
      \ 'template_default': 'def_template',
      \ 'nested_syntaxes': {'python': 'python'},
      \ 'template_ext': '.html'}]
"" Rice
colorscheme wal
"" NerdComments
let g:NERDCreateDefaultMappings = 0
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDAltDelims_fsharp = 1
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
autocmd Filetype fsharp setlocal foldmethod=indent
autocmd CursorHold * silent call CocActionAsync('highlight')
let g:deoplete#enable_at_startup = 1
set foldmethod=marker
"" VsCode
if exists('g:vscode')
	nnoremap ca <Cmd>call VSCodeNotify('keyboard-quickfix.openQuickFix')<CR>
	nnoremap <leader>gt <Cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>
	nnoremap <leader>rn <Cmd>call VSCodeNotify('editor.action.rename')<CR>
	nnoremap sh <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
	nnoremap <leader>gr <Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>
	nnoremap <leader>n <Cmd>call VSCodeNotify('editor.action.marker.next')<CR>
	nnoremap <leader>run <Cmd>call VSCodeNotify('fsharp.debugDefaultProject')<CR>
endif
""""""""""""""""""""""""
"  Other    
""""""""""""""""""""""""
"" Dump
