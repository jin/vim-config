" NeoBundle
" ---------------------------------------------

if has('vim_starting')
   set nocompatible
   set runtimepath=~/.vim/doload/*,/usr/share/vim/vimfiles/,/usr/local/Cellar/vim/7.4.273/share/vim/vim74/,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-fugitive' " Git wrapper, needed for powerline
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'scrooloose/syntastic' " Runs code through external parser to check for syntatic errors
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
NeoBundle 'scrooloose/nerdtree' " file browser
NeoBundle 'vim-scripts/Colour-Sampler-Pack' " pretty themes
NeoBundle 'tpope/vim-commentary' " easy commenting with gc
NeoBundle 'majutsushi/tagbar' " buffer to list tags
NeoBundle 'Lokaltog/vim-powerline' " status bar
NeoBundle 'wting/rust.vim' " syntax highlighting/indentation etc for Rust lang
NeoBundle 'kien/ctrlp.vim' " fuzzy file finder
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'vim-ruby/vim-ruby' " for ruby handling and autocompletion
NeoBundle 'Shougo/neocomplete.vim' " autocompletion
NeoBundle 'tpope/vim-endwise' " for ruby
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'genoma/vim-less'
NeoBundle 'rcyrus/snipmate-snippets-rubymotion'
NeoBundle 'tpope/vim-rake'
NeoBundle 'vim-scripts/EasyGrep'
NeoBundle 'greyblake/vim-preview'
NeoBundle 'travitch/hasksyn'
NeoBundle 'morhetz/gruvbox' " gruvbox colorscheme
NeoBundle 'mattn/emmet-vim'
NeoBundle 'eiginn/netrw'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'elzr/vim-json' " Pretty JSON
NeoBundle 'tommcdo/vim-exchange' " Exchange regions of words with cx
NeoBundle 't9md/vim-ruby-xmpfilter' " Inline Ruby evaluation
NeoBundle 'Keithbsmiley/swift.vim'
NeoBundle 'tpope/vim-rsi' " Readline keybindings
NeoBundle 'godlygeek/tabular'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'trusktr/seti.vim' " colorscheme
NeoBundle 'fatih/vim-go'
NeoBundle 'vim-scripts/brainfuck-syntax'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'justinj/vim-react-snippets'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'ejamesc/JavaScript-Indent'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'solarnz/thrift.vim'
NeoBundle 'adimit/prolog.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'lambdalisue/vim-gista'
NeoBundle 'vim-scripts/multvals.vim'
NeoBundle 'vim-scripts/EvalSelection.vim'
NeoBundle 'vim-scripts/cool.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'lervag/vimtex'


" end of bundles

" NeoBundle 'jelera/vim-javascript-syntax', {'autoload': {'filetypes': ['javascript']}}

" Installation check.
NeoBundleCheck

call neobundle#end()

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
set viminfo=
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

"" Highlight trailing whitespaces
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.

"" ..but don't do that in html and xml files
autocmd filetype html,xml set listchars-=tab:>.

"" For markdown and text files
" autocmd BufRead,BufNewFile *.md,*.txt,*.mdown,*.markdown setlocal spell spelllang=en_us textwidth=79 complete+=kspell
autocmd BufRead,BufNewFile *.md,*.txt,*.mdown,*.markdown setlocal textwidth=79 complete+=kspell

"" Python PEP8 style
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

"" Java style
au FileType java set softtabstop=4 tabstop=4 shiftwidth=4

"" Use system clipboard
set clipboard=unnamed

"" Persistent undo
set undofile
set undodir=/tmp

"" MacVim default font and size
set guifont=Inconsolata-dz:h12

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

"" Remap ESC
" imap kj <Esc>

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

"" Execute script
nnoremap <F8><F8> :!./%<CR>

"" Sudo write a file
cmap w!! w !sudo tee % >/dev/null

"" Go to previous file
map <Leader>p <C-^>

"" Yank whole file
map yA :%y+<CR>

"" For rcodetools/xmpfilter ruby inline evaluation
nmap <buffer> <Leader>r <Plug>(xmpfilter-run)
xmap <buffer> <Leader>r <Plug>(xmpfilter-run)
imap <buffer> <Leader>r <Plug>(xmpfilter-run)
nmap <buffer> <Leader>m <Plug>(xmpfilter-mark)
xmap <buffer> <Leader>m <Plug>(xmpfilter-mark)
imap <buffer> <Leader>m <Plug>(xmpfilter-mark)

"""""""""""""
"""Plugins"""
"""""""""""""

"" YCM
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"" Command-T
let g:CommandTMaxHeight=5

"" NERDTree
let g:NERDTreeWinSize = 20

"" Tagbar
let g:tagbar_width = 30

"" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Neocomplete
let g:neocomplete#enable_at_startup = 1

" Rails autocomplete
" let g:rubycomplete_rails = 1

"" Disable delimiteMate for Rust source
let delimitMate_excluded_ft = "rust,ml,ocaml"

" Automatically enter
" au VimEnter * Tagbar
au VimEnter * NERDTree

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*

let g:jsx_ext_required = 0
autocmd BufRead,BufNewFile *.cu set filetype=cpp

let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

let g:evalSelectionRubyDir='~/.vim/bundle/EvalSelection.vim/ruby/'
let g:evalSelectionOcamlInterpreter="ocaml"

autocmd BufRead,BufNewFile *.es6 setfiletype javascript

" ## added by OPAM user-setup for vim / base ## 9a3a300d80f2faeb258825d3e0c1947c ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = systemlist(join(s:opam_check_cmdline, ' '))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
" ## added by OPAM user-setup for vim / ocp-indent ## 0a18a17982bc39fce9f3ca9a84445590 ## you can edit, but keep this line
if count(s:opam_available_tools,"ocp-indent") == 0
  source "/Users/jin/.opam/system/share/vim/syntax/ocp-indent.vim"
endif
" ## end of OPAM user-setup addition for vim / ocp-indent ## keep this line

autocmd FileType ocaml set commentstring=(*\ %s\ *)

filetype plugin indent on
syntax enable

colorscheme seti
