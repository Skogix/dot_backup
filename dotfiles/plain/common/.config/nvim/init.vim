"""""""""""""""""""""""
"  Todo  
""""""""""""""""""""""""
" vim-snippets
" ulti-snips
" deoplete
" lsp
"   csharp
"   haskell
"
" telescope
" tmux sessions
" tmux windows
"
" vim surround
"
" multi cursor
" https://github.com/mg979/vim-visual-multi
""""""""""""""""""""""""
"  Init 
""""""""""""""""""""""""
let mapleader = ' '
let maplocalleader = ','
let g:mapleader = ' '
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
set tabstop=4 softtabstop=4
set shiftwidth=4
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
"set termguicolors
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
"" VsCode
Plug 'gruvbox-community/gruvbox'
if exists('g:vscode')
    Plug 'asvetliakov/vim-easymotion'
else
"" NeoVim
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sudormrfbin/cheatsheet.nvim'
Plug 'cljoly/telescope-repo.nvim'
Plug 'camgraff/telescope-tmux.nvim'
Plug 'norcalli/nvim-terminal.lua'
Plug 'fhill2/telescope-ultisnips.nvim'
Plug 'nvim-telescope/telescope-github.nvim'
Plug 'tpope/vim-fugitive'
Plug 'kyazdani42/nvim-web-devicons'
" easymotion
Plug 'easymotion/vim-easymotion'
" lsp
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'fannheyward/telescope-coc.nvim'
Plug 'sheerun/vim-polyglot'
" markdown
Plug 'ellisonleao/glow.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'autozimu/LanguageClient-neovim', {
            "\ 'branch': 'next',
            "\ 'do': 'bash install.sh',
            "\ }
Plug 'christoomey/vim-tmux-navigator'
"Plug 'PhilT/vim-fsharp'
"Plug 'ionide/Ionide-vim', {
    "\ 'do': 'make fsautocomplete',
    "\ }
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'neovim/nvim-lspconfig'
"Plug 'kabouzeid/nvim-lspinstall'

"Plug 'OmniSharp/omnisharp-vim'
"Plug 'deoplete-plugins/deoplete-lsp'
" autocomplete
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-lsp'
" comments
Plug 'preservim/nerdcommenter', { 'commit': 'a5d1663' }
" org mode
Plug 'jceb/vim-orgmode'
Plug 'vim-scripts/utl.vim'
Plug 'mattn/calendar-vim'
Plug 'tpope/vim-speeddating'
Plug 'inkarkat/vim-SyntaxRange'
" primeagen
" Plug 'ThePrimeagen/vim-be-good'
" rice pywal
Plug 'dylanaraps/wal.vim'
"" End
endif
call plug#end()
""""""""""""""""""""""""
"  Mappings
""""""""""""""""""""""""
"" VsCode
if exists('g:vscode')
	nnoremap ca <Cmd>call VSCodeNotify('keyboard-quickfix.openQuickFix')<CR>
	nnoremap <leader>gt <Cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>
	nnoremap <leader>rn <Cmd>call VSCodeNotify('editor.action.rename')<CR>
	nnoremap sh <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
	nnoremap <leader>gr <Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>
	nnoremap <leader>n <Cmd>call VSCodeNotify('editor.action.marker.next')<CR>
	nnoremap <leader>run <Cmd>call VSCodeNotify('fsharp.debugDefaultProject')<CR>
else
"" NeoVim
""" LSP
" themes : dropdown, ivy, cursor
    nmap <silent> <leader>n <Plug>(coc-diagnostic-next)
    nmap <silent> <leader><S-n> <Plug>(coc-diagnostic-prev)
    nnoremap ca <Cmd>:Telescope coc code_actions theme=ivy<Cr>
    "vnoremap <leader>ca <Cmd>:Telescope coc code_line_actions<Cr>
    nnoremap <leader>coc <Cmd>:Telescope coc commands<Cr>
    nnoremap <leader>tele <Cmd>:Telescope commands<Cr>
    nnoremap <leader>loc <Cmd>:Telescope coc locations<Cr>
    nnoremap <leader>ref <Cmd>:Telescope coc references<Cr>
    nnoremap <leader>refactor <Plug>(coc-refactor)<Cr>
    nnoremap <leader>def <Cmd>:Telescope coc definitions<Cr>
    nnoremap <leader>dec <Cmd>:Telescope coc declarations<Cr>
    nnoremap <leader>imp <Cmd>:Telescope coc implementations<Cr>
    nnoremap <leader>tdef <Cmd>:Telescope coc type_definitions<Cr>
    nnoremap <leader>dia <Cmd>:Telescope coc diagnostics<Cr>
    nnoremap <leader>sym <Cmd>:Telescope coc document_symbols<Cr>
    nnoremap <leader>wsym <Cmd>:Telescope coc workspace_symbols<Cr>
    nnoremap <leader>wnn <Cmd>:Telescope coc workspace_diagnostics<Cr>
    nnoremap <silent> sh :call <SID>show_documentation()<Cr>
	nnoremap <leader>+ <Cmd>:Telescope ultisnips<Cr>
    nmap <leader>rn <Cmd>:CocCommand document.renameCurrentWord<Cr>
	"nmap <leader>rn <Plug>(coc-rename)
	xmap <leader>format  <Plug>(coc-format-selected)
	nmap <leader>format  <Plug>(coc-format-selected)
    xmap ca  <Plug>(coc-codeaction-selected)
    nmap <leader>ca  <Plug>(coc-codeaction-selected)
    nmap <leader>ca  <Plug>(coc-fix-current)
    nmap <silent> <C-s> <Plug>(coc-range-select)
    xmap <silent> <C-s> <Plug>(coc-range-select)
    
    command! -nargs=? Fold :call     CocAction('fold', <f-args>)

    autocmd Filetype fsharp setlocal foldmethod=indent

    autocmd CursorHold * silent call CocActionAsync('highlight')
    
    "nnoremap sh <cmd>lua vim.lsp.buf.hover()<cr>
    "nnoremap rn <cmd>lua vim.lsp.buf.rename()<cr>
    "nnoremap gt <cmd>Telescope lsp_definitions<cr>
    "nnoremap gr <cmd>Telescope lsp_references<cr>
    "nnoremap <leader>ca <cmd>Telescope lsp_code_actions<cr>
    "nnoremap ca <cmd>lua vim.lsp.buf.code_action()<cr>
    "nnoremap <leader>n <cmd>lua vim.lsp.diagnostic.goto_next()<cr>
    "nnoremap <leader>sym <cmd>Telescope lsp_document_symbols<cr>
    "nnoremap <leader>format <cmd>lua vim.lsp.buf.formatting()<cr>
""" Basics
	nmap <silent> <C-i> <Plug>(coc-cursors-position)
	"nmap <silent> <C-d> <Plug>(coc-cursors-word)
	xmap <silent> <C-i> <Plug>(coc-cursors-range)
    nmap <leader>x  <Plug>(coc-cursors-operator)
" use normal command like `<leader>xi(`
""" Navigation
    nnoremap <C-P> <cmd>Telescope find_files<cr>
    nnoremap <C-T> <cmd>Telescope<cr>
    nnoremap <C-T>t <cmd>Telescope find_files theme=dropdown<cr>
    nnoremap <C-N> <cmd>Telescope file_browser<cr>
    nnoremap <C-S-P> <cmd>Telescope git_files<cr>
	nnoremap <C-T>repo <cmd>Telescope repo list<cr>
    nnoremap <leader>p <cmd>Telescope live_grep<cr>
    nnoremap <leader>help <cmd>Telescope help_tags<cr>
    nnoremap <leader>rr <cmd>source ~/.config/nvim/init.vim<cr><cmd>echo "Sourced vim.rc"<cr>
    nnoremap <c-j> <c-w>j
    nnoremap <c-k> <c-w>k
    nnoremap <c-h> <c-w>h
    nnoremap <c-l> <c-w>l
    nnoremap zh zm
    nnoremap zl zR
""" NerdCommenter
    let g:NERDCreateDefaultMappings = 0
    let g:NERDCompactSexyComs = 1
    let g:NERDTrimTrailingWhitespace = 1
    let g:NERDAltDelims_fsharp = 1

    nnoremap <leader>/ :call NERDComment(0,'toggle')<CR>
    vnoremap <leader>/ :call NERDComment(0,'toggle')<CR>
endif
nnoremap <leader>xx <Plug>(lcn-hover)
nmap <F5> <Plug>(lcn-menu)

""""""""""""""""""""""""
"  Fsharp 
""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.fs,*.fsi,*.fsx set filetype=fsharp
autocmd BufNewFile,BufRead *.fsproj         set filetype=fsharp_project
""""""""""""""""""""""""
"  Backup               
""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1

"let g:fsharp#fsautocomplete_command =[ 'dotnet', 'fsautocomplete','--background-service-enabled']
"let g:LanguageClient_serverCommands = {
"    \ 'fsharp': ['dotnet', 'fsautocomplete','--background-service-enabled']
"    \ }
"let g:fsharp#backend = "languageclient-neovim"
" let g:fsharp#linter = 1
" let g:fsharp#UnusedDeclarationsAnalyzer = 0
" let g:fsharp#UnusedOpensAnalyzer = 0
" let g:fsharp#ExternalAutocomplete = 0
" let fsharp#enable_reference_code_lens = 0
"lua << EOF
"require'lspconfig'.omnisharp.setup{
"    cmd = { "/home/skogix/.cache/omnisharp-vim/omnisharp-roslyn/run", "--languageserver" , "--hostPID", tostring(pid) };
"}
"require'lspconfig'.fsautocomplete.setup{}
"require'lspinstall'.setup() -- important
"EOF
" backup

"let mapleader = "\<space>"
"" Toggle folds
"nnoremap <silent> <leader><Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
"vnoremap <leader><space> zf

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
    endif
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
"" coc show documentation
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
""""""""""""""""""""""""
"  Other 
""""""""""""""""""""""""
colorscheme wal
""""""""""""""""""""""""
"  Coc 
""""""""""""""""""""""""
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
""""""""""""""""""""""""
"  Lua  
""""""""""""""""""""""""
"" Require
lua << EOF
require('telescope').load_extension('coc')
require('telescope').load_extension('media_files')
require('telescope').load_extension('ultisnips')
require'terminal'.setup()
require('telescope').load_extension('gh')
require'nvim-web-devicons'.get_icons()
EOF
