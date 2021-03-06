call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
" Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-ragtag'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree' " file browser
Plug 'vim-scripts/Colour-Sampler-Pack' " pretty themes
Plug 'tpope/vim-commentary' " easy commenting with gc
Plug 'majutsushi/tagbar' " buffer to list tags
Plug 'vim-airline/vim-airline' " status bar
Plug 'kien/ctrlp.vim' " fuzzy file finder
Plug 'vim-ruby/vim-ruby' " for ruby handling and autocompletion
" Plug 'tpope/vim-endwise' " for ruby
" Plug 'genoma/vim-less'
" Plug 'elzr/vim-json' " Pretty JSON
" Plug 'tpope/vim-rsi' " Readline keybindings
Plug 'trusktr/seti.vim' " colorscheme
" Plug 'justinj/vim-react-snippets'
Plug 'tpope/vim-surround'
Plug 'davidzchen/vim-bazel'
Plug 'leafgarland/typescript-vim'
Plug 'rizzatti/dash.vim'
" Plug 'Quramy/tsuquyomi'
" Plug 'wizicer/vim-jison'
Plug 'ternjs/tern_for_vim'
Plug 'alvan/vim-closetag'
Plug 'xolox/vim-misc'
Plug 'Shougo/neocomplete.vim'
Plug 'vim-scripts/Vim-R-plugin'
Plug 'keith/swift.vim'
Plug 'vim-latex/vim-latex'

" Haskell
Plug 'eagletmt/neco-ghc'
Plug 'eagletmt/ghcmod-vim' "cabal install ghc-mod
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'itchyny/vim-haskell-indent'
Plug 'godlygeek/tabular'

" Coq
Plug 'tounaishouta/coq.vim'

" Nix
Plug 'LnL7/vim-nix'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'flowtype/vim-flow'

" Mustache/Handlebars templating
Plug 'mustache/vim-mustache-handlebars'

" Add plugins to &runtimepath
call plug#end()

set nocompatible
set number relativenumber
set encoding=utf-8
set laststatus=2 " Needed for Powerline
set mouse=a
set cinkeys-=0#
set indentkeys-=0#

" Suppress default message at launch
set shortmess+=I

" Increase performance when dealing with long strings
set lazyredraw

" set nobackup
" no viminfo files
set viminfo=%,\"100,'10,/50,:100,h,f0,n~/.viminfo
set backupdir=/tmp
set directory=/tmp

"" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab "" Indent start of lines with shiftwidth, not tabstop

"" Nicer autocomplete in command mode
set wildmode=longest,list

" Allow backspace to work everywhere
set backspace=indent,eol,start

"" Enable vim omnicompletion
set omnifunc=syntaxcomplete#Complete

"" Soft wrap long lines
set wrap

"" Searching stuff
set hlsearch
set incsearch
set ignorecase
set smartcase

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*

set cursorline

hi Search cterm=NONE ctermfg=black ctermbg=white

set colorcolumn=100

" Highlight trailing whitespaces
" set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.

"" ..but don't do that in html and xml files
au filetype html,xml set listchars-=tab:>.

"" For markdown and text files
" autocmd BufRead,BufNewFile *.md,*.txt,*.mdown,*.markdown setlocal spell spelllang=en_us textwidth=79 complete+=kspell
" au BufRead,BufNewFile *.md,*.txt,*.mdown,*.markdown setlocal textwidth=79 complete+=kspell
au BufRead,BufNewFile *.cu set filetype=cpp

au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
au FileType java set softtabstop=4 tabstop=4 shiftwidth=4
au FileType typescript setlocal completeopt+=menu,preview,longest,menuone
au FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbolC)
au FileType typescript nmap <buffer> <Leader>r <Plug>(TsuquyomiReferences)

"" Use system clipboard
set clipboard=unnamed

"" Persistent undo
set undofile
set undodir=/tmp

"" MacVim default font and size
set guifont=Inconsolata-dz:h12
set guioptions-=r
set guioptions-=L

"" No error and visual bells
set noerrorbells
set visualbell t_vb=

"" Keep at least 5 lines around cursor
set scrolloff=5

"" Set vsp and sp to open a new pane to the right and below by default
set splitbelow
set splitright

"""""""""""""""""""
""""Keymappings""""
"""""""""""""""""""
"" Set <leader> to ','
let mapleader = ","

"" Maintain selection after indentation
vmap > >gv
vmap < <gv

"" Moves cursor to the midscreen while going through search terms
nnoremap N Nzz
nnoremap n nzz

"" Quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Split windows specified explicitly
nnoremap <C-w>s :sp<cr>

"" Set ':' to ';'
nnoremap ; :

"" 'j' and 'k' as they should be
nnoremap j gj
nnoremap k gk

"" No arrow keys for vimmers!
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

"" Remove all trialing whitespaces from file
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

"" Turn off highlighting after search
map <leader><space> :noh<CR>

"" Sudo write a file
cmap w!! w !sudo tee % >/dev/null

"" Go to previous file
" map <Leader>p <C-^>

"" Yank whole file
" map yA :%y+<CR>

"" For rcodetools/xmpfilter ruby inline evaluation
" nmap <buffer> <Leader>r <Plug>(xmpfilter-run)
" xmap <buffer> <Leader>r <Plug>(xmpfilter-run)
" imap <buffer> <Leader>r <Plug>(xmpfilter-run)
" nmap <buffer> <Leader>m <Plug>(xmpfilter-mark)
" xmap <buffer> <Leader>m <Plug>(xmpfilter-mark)
" imap <buffer> <Leader>m <Plug>(xmpfilter-mark)

"""""""""""""
"""Plugins"""
"""""""""""""

"" NERDTree
let g:NERDTreeWinSize = 25
let g:NERDTreeWinPos = "left"
au VimEnter * NERDTree
au VimEnter * wincmd p

" Automatically close NERDTree if last buffer
function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()

"" Tagbar
let g:tagbar_width = 30

"" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0

"" Neocomplete
let g:neocomplete#enable_at_startup = 1

"" Disable delimiteMate for Rust source
let delimitMate_excluded_ft = "rust,ml,ocaml,tex"

" Tern - JavaScript autocomplete

let g:tern_map_keys = 1
let g:tern_map_prefix = '<leader>'
let g:tern_show_argument_hints = 'on_hold'

map <leader>td :TernDef<CR>
map <leader>tt :TernType<CR>
map <leader>tr :TernRefs<CR>
map <leader>tR :TernRename<CR>

" Automatically enter
" au VimEnter * Tagbar

" Dash

nmap <silent> <leader>d <Plug>DashSearch

" OCaml

set rtp+=~/Code/ocp-indent-vim
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

au FileType ocaml set commentstring=(*\ %s\ *)

" Tex

let g:tex_flavor='latex'
let g:Tex_FoldedSections = ''
au BufWritePost *.tex silent call Tex_RunLaTeX()
au BufWritePost *.tex silent !pkill -USR1 xdvi.bin

" Haskell

au BufWritePost *.hs GhcModCheckAsync
au FileType haskell map <leader>sc :GhcModSigCodegen<CR>
au FileType haskell map <leader>sf :GhcModSplitFunCase<CR>
au FileType haskell map <leader>ti :GhcModTypeInsert<CR>
au FileType haskell map <leader>tt :GhcModType<CR>
au FileType haskell map <leader>c  :GhcModCheck<CR>
au FileType haskell map <leader>i  :GhcModInfo<CR>
let g:ghcmod_ghc_options = ['-fno-warn-unused-binds']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1

let g:haskell_tabular = 1
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

" Coq
au BufWritePost *.v CoqRunToCursor
au FileType *.v set commentstring=(*\ %s\ *)

filetype plugin indent on
syntax enable

colorscheme seti
