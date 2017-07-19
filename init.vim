"
" Vim-plug Configuration
"

" Set plugin directory
call plug#begin('~/.nvim/plugged')

" Lean & mean status/tabline for Vim that's light as air
Plug 'bling/vim-airline'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plug 'ctrlpvim/ctrlp.vim'

" This is an EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" Incsearch.vim incrementally highlights ALL pattern matches unlike default 'incsearch'
Plug 'haya14busa/incsearch.vim'

" This repository contains snippets files for various programming languages
Plug 'honza/vim-snippets'

" A simple, easy-to-use Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" Run your favorite search tool from Vim, with an enhanced results list
Plug 'mileszs/ack.vim'

" Numbers.vim is a plugin for intelligently toggling line numbers
Plug 'myusuf3/numbers.vim'

" JavaScript bundle for Vim, this bundle provides syntax highlighting and improved indentation
Plug 'pangloss/vim-javascript'

" This plug-in provides automatic closing of quotes, parenthesis, brackets, etc
Plug 'Raimondi/delimitMate'

" The NERD tree allows you to explore your filesystem and to open files and directories
Plug 'scrooloose/nerdtree'

" Comment functions so powerful - no comment necessary
Plug 'scrooloose/nerdcommenter'

" Syntastic is a syntax checking plugin for Vim created by Martin Grenfell
Plug 'scrooloose/syntastic'

" UltiSnips is the ultimate solution for snippets in Vim
Plug 'SirVer/ultisnips'

" A Vim bundle with snippets for PHP developers
Plug 'ssergiuss/ultisnips-php'

" This is version 2 of PDV - PHP Documentor for Vim, your tool of choice for generating PHP doc blocks
Plug 'tobyS/pdv'

" Vmustache is an implementation of the Mustache template system in VIMScript
Plug 'tobyS/vmustache'

" Molokai theme
Plug 'tomasr/molokai'

" I'm not going to lie to you; fugitive.vim may very well be the best Git wrapper of all time
Plug 'tpope/vim-fugitive'

" YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim
Plug 'valloric/youcompleteme'

" Vim-airline themes
Plug 'vim-airline/vim-airline-themes'

" This plugin add capability to search in folders via NERDtree
Plug 'vim-scripts/nerdtree-ack'

" This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces
Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()

"
" END Vim-plug Configuration
"

"
" Global Configuration
"

" Switch on syntax highlighting
syntax enable

" Set theme and airline theme
colorscheme molokai
let g:airline_theme='molokai'

" Set auto-indent options
set autoindent
set cindent
set smartindent

" Do not allow lines longer than the width of the window to wrap and continue displaying on the next line
set nowrap

" Show absolute line number of the current line
set number

" Set global tabs and spacing
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show a status bar
set ruler
set laststatus=2

" Scroll the window with 10 lines around
set scrolloff=10

" Allow backspacing over autoindent, line breaks, the start of insert
set backspace=indent,eol,start

" Highlight all search matches
set hlsearch

" Set search case insensitive
set ic

" Remove vertical scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Set leader key
let mapleader = ','

" Highlight the 81st column and the 121st, 122nd columns
let &colorcolumn='81,121,122'

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

"
" END Global Configuration
"

"
" Key Bindings
"

" Disable the cursor/arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Switch between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" 81 characters vertical resize
noremap <leader>vr <C-w>=<CR> :vertical resize 85<CR>

" Vertical resize
noremap <leader>v1 :vertical resize +10<CR>
noremap <leader>v2 :vertical resize +20<CR>
noremap <leader>v3 :vertical resize +30<CR>
noremap <leader>v4 :vertical resize +40<CR>
noremap <leader>v5 :vertical resize +50<CR>
noremap <leader>v6 :vertical resize +60<CR>
noremap <leader>v7 :vertical resize +70<CR>
noremap <leader>v8 :vertical resize +80<CR>
noremap <leader>v9 :vertical resize +90<CR>

" Press Space to turn off highlighting and clear any message already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Reveal current file in tree
noremap <leader>n :NERDTreeFind<CR>

" Search for visually selected text
vnoremap // y/<C-R>"<CR>

" Keep only the active tab and split
noremap <C-w>O :tabo \| on<CR>

"
" END Key Bindings
"

"
" Plugins Configuration
"

" ctrlpvim/ctrlp.vim
let g:ctrlp_working_path_mode = 0

" haya14busa/incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" junegunn/vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
let g:easy_align_ignore_groups = ['String']

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1

" Raimondi/delimitMate
let delimitMate_expand_cr = 2

" SirVer/ultisnips
let g:UltiSnipsExpandTrigger='<C-s>'
let g:UltiSnipsJumpForwardTrigger='<C-l>'
let g:UltiSnipsJumpBackwardTrigger='<C-h>'

" scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>

" scrooloose/syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" tobyS/pdv
let g:pdv_template_dir = $HOME .'/.nvim/plugged/pdv/templates_snip'
nnoremap <C-a> :call pdv#DocumentWithSnip()<CR>

" valloric/youcompleteme
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_seed_identifiers_with_syntax = 1

" Yggdroot/indentLine
let g:indentLine_char = '‧'

"
" END Plugins Configuration
"
